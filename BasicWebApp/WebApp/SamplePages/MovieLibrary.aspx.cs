using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp.SamplePages
{
    public partial class MovieLibrary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MessageLabel.Text = "";
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(MovieTitle.Text))
            {
                MessageLabel.Text = "You must provide a movie title";
            }
            int numberchoice = 0;
            if (!int.TryParse(MovieYear.Text, out numberchoice))
            {
                MessageLabel.Text = "Movie Year must be an integer";
            }
        }
    }
}