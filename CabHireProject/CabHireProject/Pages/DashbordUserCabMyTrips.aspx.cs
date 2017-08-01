using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CabHireProject.Pages
{
    public partial class DashbordUserCabMyTrips : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["UserDBname"] as string))
            {
                Response.Redirect("~/Pages/Logout_Error.aspx");
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            string UserTrigernameFromSession = Session["UserDBname"].ToString();
            string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(CN);
            SqlCommand cmd = new SqlCommand("select SerialNo,DriverBooked,CabNoBooked,Typeofcab,StartingLoc,Destination,UpdatedOn,Status from " + UserTrigernameFromSession+ "UserTgr ORDER BY SerialNo DESC", con);
            con.Open();
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();

        }
    }
}