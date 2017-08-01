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
    public partial class DashbordDriverMyCabTrips : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["DriverUserName"] as string))
            {
                Response.Redirect("~/Pages/Logout_Error.aspx");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string DriverCabNo = Session["DriverCabNo"].ToString();

            string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(CN);
            SqlCommand cmd = new SqlCommand("select SerialNo,CabNum,Starting,Destin,UpdatedOn,ActionPerf from CabDatabase_Admin_AuditTable where CabNum = '" + DriverCabNo+ "' ORDER BY SerialNo DESC ", con);
            con.Open();
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();

        }
    }
}