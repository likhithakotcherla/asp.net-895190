using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Com.Cognizant.MovieCruiser.Model;
using Com.Cognizant.MovieCruiser.Dao;
using Com.Cognizant.MovieCruiser.Utility;

namespace MovieCruiser
{
    public partial class ViewFavorites : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FavoritesDaoCollection movieList = new FavoritesDaoCollection();
            Favoritelist.DataSource = FavoritesDaoCollection.userCart[94944];
            Favoritelist.DataBind();
        


        }
    }
}