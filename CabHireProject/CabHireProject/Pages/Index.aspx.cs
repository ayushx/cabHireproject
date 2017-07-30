using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CabHireProject.Pages
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/SignUpCompleated.aspx");
        }

        protected void signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/SignUpPage.aspx");
        }

        protected void LoginDriver_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/SignUpCompleated_Driver.aspx");
        }

        protected void SignupDriver_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/SignUpPageDriver.aspx");
        }
    }
}