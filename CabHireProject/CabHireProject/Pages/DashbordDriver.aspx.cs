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
    public partial class DashbordDriver : System.Web.UI.Page
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
            Button1.Visible = true;
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            string DriverCabNo = Session["DriverCabNo"].ToString();
            string DriverUserName = Session["DriverUserName"].ToString();
            string DriverEmailId = Session["DriverEmailId"].ToString();
            string DriverCarType = Session["DriverCarType"].ToString();

            Random rnd = new Random();
            int EILEID = rnd.Next(1, 10000);
            string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(CN);
            SqlCommand cmd = new SqlCommand("sp_ByDriver_CabDataAddition", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@driverName", DriverUserName);
            cmd.Parameters.AddWithValue("@cabNum", DriverCabNo);
            cmd.Parameters.AddWithValue("@eielID", "OEIL-" + EILEID);
            cmd.Parameters.AddWithValue("@starting", DropDownList1.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@destin", DropDownList2.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@typeofcab", DriverCarType);
            cmd.Parameters.AddWithValue("@emailID", DriverEmailId);
            cmd.Parameters.AddWithValue("@contactNum", TextBox5.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox5.Text = "";
            DropDownList1.SelectedValue = "-1";
            DropDownList2.SelectedValue = "-1";
           
            Label1.Text = "CAB REGISTERED SUCESSFULLY";
            Button1.Visible = false;

        }
    }
}