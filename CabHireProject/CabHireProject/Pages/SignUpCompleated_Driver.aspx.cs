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
    public partial class SignUpCompleated_Driver : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(CN);
            SqlCommand cmd = new SqlCommand("sp_Driver_ValidateUserIdPassword", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@emailID", TextBox1.Text));
            cmd.Parameters.Add(new SqlParameter("@password", TextBox2.Text));

            SqlParameter outPutParameter = new SqlParameter();
            outPutParameter.ParameterName = "@validationResult";
            outPutParameter.SqlDbType = System.Data.SqlDbType.Int;
            outPutParameter.Direction = System.Data.ParameterDirection.Output;
            cmd.Parameters.Add(outPutParameter);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string result = outPutParameter.Value.ToString();

            if (result == "1")
            {
                string CN1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection con1 = new SqlConnection(CN1);
                SqlCommand cmd1 = new SqlCommand("sp_Driver_toStoreUserNameFromSesson", con1);
                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.Parameters.Add(new SqlParameter("@emailIDorUsername", TextBox1.Text));

                SqlParameter outPutParameter1 = new SqlParameter();
                outPutParameter1.ParameterName = "@forsessonCabNo";
                outPutParameter1.SqlDbType = System.Data.SqlDbType.VarChar;
                outPutParameter1.Size = 4000;
                outPutParameter1.Direction = System.Data.ParameterDirection.Output;
                cmd1.Parameters.Add(outPutParameter1);

                SqlParameter outPutParameter2 = new SqlParameter();
                outPutParameter2.ParameterName = "@forsessonUserName";
                outPutParameter2.SqlDbType = System.Data.SqlDbType.VarChar;
                outPutParameter2.Size = 4000;
                outPutParameter2.Direction = System.Data.ParameterDirection.Output;
                cmd1.Parameters.Add(outPutParameter2);

                SqlParameter outPutParameter3 = new SqlParameter();
                outPutParameter3.ParameterName = "@forsessonEmailId";
                outPutParameter3.SqlDbType = System.Data.SqlDbType.VarChar;
                outPutParameter3.Size = 4000;
                outPutParameter3.Direction = System.Data.ParameterDirection.Output;
                cmd1.Parameters.Add(outPutParameter3);

                SqlParameter outPutParameter4 = new SqlParameter();
                outPutParameter4.ParameterName = "@forsessonCarType";
                outPutParameter4.SqlDbType = System.Data.SqlDbType.VarChar;
                outPutParameter4.Size = 4000;
                outPutParameter4.Direction = System.Data.ParameterDirection.Output;
                cmd1.Parameters.Add(outPutParameter4);

                con1.Open();
                cmd1.ExecuteNonQuery();
                con1.Close();
                string forsessonCabNo = outPutParameter1.Value.ToString();
                string forsessonUserName = outPutParameter2.Value.ToString();
                string forsessonEmailId = outPutParameter3.Value.ToString();
                string forsessonCarType = outPutParameter4.Value.ToString();

                Session["DriverCabNo"] = forsessonCabNo;
                Session["DriverUserName"] = forsessonUserName;
                Session["DriverEmailId"] = forsessonEmailId;
                Session["DriverCarType"] = forsessonCarType;

                Response.Redirect("~/Pages/DashbordDriver.aspx?uername=" + TextBox1.Text);
            }
            else
            {
                Label4.Text = "Incorrect UserID or Password";
            }
        }
    }
}