using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Com.Cognizant.MovieCruiser.Model;
using Com.Cognizant.MovieCruiser.Utility;

namespace Com.Cognizant.MovieCruiser.Dao
{
    public class FavoritesDaoCollection : IFavoritesDao
    {
        public static List<Movie> favoriteMovieList = null;
        public static List<Movie> retrievedList = null;
        public static Dictionary<long, List<Movie>> userCart = null;
        static public void CreateFavoriteList()
        {
            if (favoriteMovieList == null)
            {
                favoriteMovieList = new List<Movie>()
            {
                      new Movie()
                       {
                        MovieId = 1, MovieTitle = "Avatar", BoxOfficeCollection = "$2,787,965,087", MovieActive = "Yes",
                        DateOfLaunch = "15/03/2017", MovieGenre = "Science Fiction", HasTeaser = "Yes" },
                       new Movie()
                       {
                        MovieId = 2, MovieTitle = "The Avengers", BoxOfficeCollection = "$2,787,965,087", MovieActive = "Yes",
                        DateOfLaunch = "15/03/2017", MovieGenre = "Science Fiction", HasTeaser = "Yes" },


                };
                userCart = new Dictionary<long, List<Movie>>();
                userCart.Add(94944, favoriteMovieList);
                userCart.Add(94945, favoriteMovieList);
            }
        }


        public void AddFavoriteMovie(long userId, long movieId)
        {

            int favid;
            MovieDaoCollection m = new MovieDaoCollection();
            List<Movie> movieList = m.GetMovieListCustomer();
            int key = 0;
            Movie movie = (from temp in movieList
                           where temp.MovieId == movieId
                           select temp).FirstOrDefault();
            favid = movie.MovieId;
            foreach (Movie emp in favoriteMovieList)
            {
                if ((favid).Equals(emp.MovieId))
                {
                    key = 1;
                }
            }
            if (movie != null)
            {
                movieId = movie.MovieId;
                if (key == 0)
                {
                    favoriteMovieList.Add(movie);
                    userCart[userId] = favoriteMovieList;
                }

            }

        }
        public void GetAllMovies(long userId)
        {
            List<Movie> retrievedMovieList = userCart[userId];

        }
        public void RemoveMovie(long userId, long movieId)
        {
            List<Movie> retrievedMovieList = userCart[userId];
            if (retrievedMovieList.ElementAtOrDefault(((int)movieId - 1)) != null)
            {
                retrievedMovieList.RemoveAt((int)movieId - 1);
            }
            else
            {
                Console.WriteLine("No movie found to delete from favorites based on Selected id ");
            }

        }
    }

}