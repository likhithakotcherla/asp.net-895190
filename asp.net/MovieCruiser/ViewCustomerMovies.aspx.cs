﻿using System;
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
    public partial class ViewCustomerMovies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MovieDaoCollection.CreateMovieList();
            MovieDaoCollection CustomerMovie = new MovieDaoCollection();
            GridView3.DataSource = CustomerMovie.GetMovieListCustomer();
            GridView3.DataBind();
        }
    }
}