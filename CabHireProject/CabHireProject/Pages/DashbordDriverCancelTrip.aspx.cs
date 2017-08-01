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
    public partial class DashbordDriverCancelTrip : System.Web.UI.Page
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
            string UserCabNo = Session["DriverCabNo"].ToString();

            string CN2 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con2 = new SqlConnection(CN2);
            SqlCommand cmd2 = new SqlCommand("select DriverName ,CabNum ,Starting,Destin from CabDatabase_Admin where CabNum = '"+UserCabNo+"'", con2);

            con2.Open();
            GridView1.DataSource = cmd2.ExecuteReader();
            GridView1.DataBind();
            con2.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string UserCabNo = Session["DriverCabNo"].ToString();
          
            string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(CN);
            SqlCommand cmd = new SqlCommand("sp_Driver_CabDataRemove", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Cabnum", UserCabNo);
            // cmd.Parameters.AddWithValue("@cabnum", TextBox7.Text);

            SqlParameter outPutParameter = new SqlParameter();
            outPutParameter.ParameterName = "@result";
            outPutParameter.SqlDbType = System.Data.SqlDbType.Int;
            outPutParameter.Direction = System.Data.ParameterDirection.Output;
            cmd.Parameters.Add(outPutParameter);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string result = outPutParameter.Value.ToString();
            if (result == "0")
            {
                Label1.Text = "YOUR CAR IS REMOVED FROM DATABASE";

                string UserCabNo1 = Session["DriverCabNo"].ToString();

                string CN1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection con1 = new SqlConnection(CN1);
                SqlCommand cmd1 = new SqlCommand("select DriverName ,CabNum ,Starting,Destin from CabDatabase_Admin where CabNum = '" + UserCabNo1 + "'", con1);

                con1.Open();
                GridView1.DataSource = cmd1.ExecuteReader();
                GridView1.DataBind();
                con1.Close();
            }
            else
            {
                Label1.Text = "UNABLE TO REMOVE CAR FROM DATABASE";
            }

        }
    }
}