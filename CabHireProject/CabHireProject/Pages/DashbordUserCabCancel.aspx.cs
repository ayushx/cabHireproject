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
    public partial class DashbordUserCabCancel : System.Web.UI.Page
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
            string UserDBnameFromSession = Session["UserDBname"].ToString();

            string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(CN);
            SqlCommand cmd = new SqlCommand("select DriverBooked,CabNoBooked,StartingLoc,Destinatin,PhoneNo,EmailId,Typeofcab,SerialNo from " + UserDBnameFromSession , con);

            con.Open();
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string UserDBnameFromSession = Session["UserDBname"].ToString();
            string CabNoSelected = Request.Form["RadioButton1"].ToString();

            string CN1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;  
            SqlConnection con1 = new SqlConnection(CN1);
            SqlCommand cmd1 = new SqlCommand("select count(*) from " + UserDBnameFromSession + " where SerialNo = '" + CabNoSelected + "'", con1);

            con1.Open();
            string result = cmd1.ExecuteScalar().ToString();
            con1.Close();

            if (result == "1")
            {
                int EielIDSelected = Convert.ToInt32(Request.Form["RadioButton1"]);
                string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection con = new SqlConnection(CN);
                SqlCommand cmd = new SqlCommand("sp_CanclelCabFromUserDB", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@cancelcabSno", EielIDSelected);
                cmd.Parameters.AddWithValue("@usertablename", UserDBnameFromSession);

                SqlParameter outPutParameter = new SqlParameter();
                outPutParameter.ParameterName = "@result";
                outPutParameter.SqlDbType = SqlDbType.Int;
                outPutParameter.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(outPutParameter);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                string resultfinaly = outPutParameter.Value.ToString();

                if (resultfinaly == "1")
                {
                    Label1.Text = "CAB CANCELED SUCESSFULLY";

                    string UserDBnameFromSession_update = Session["UserDBname"].ToString();

                    string CN2 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                    SqlConnection con2 = new SqlConnection(CN2);
                    SqlCommand cmd2 = new SqlCommand("select DriverBooked,CabNoBooked,StartingLoc,Destinatin,PhoneNo,EmailId,Typeofcab,SerialNo from " + UserDBnameFromSession_update, con2);

                    con2.Open();
                    GridView1.DataSource = cmd2.ExecuteReader();
                    GridView1.DataBind();
                    con2.Close();

                }
                else
                {
                    Label1.Text = "UNABLE TO CANCIL CAB";
                }
            }
            else
            {
                Label1.Text = "NO CAB WITH THIS DATA FOUND";
            }

        }
    }
}