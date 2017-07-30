using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CabHireProject.Pages
{
    public partial class SignUpCompleated : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Request.QueryString["userFname"];
            Label3.Text = Request.QueryString["userLname"];

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            IsAdminOrUser admin_user = new IsAdminOrUser();
            bool checkresut =  admin_user.verifyuserandadmin(TextBox1.Text, TextBox2.Text);
            if (checkresut == true)
            {
                Response.Redirect("~/Pages/DashbordAdmin.aspx");
            }
            else
            { 
                string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection con = new SqlConnection(CN);
                SqlCommand cmd = new SqlCommand("sp_ValidateUserIdPassword2", con);
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
                    SqlCommand cmd1 = new SqlCommand("sp_toStoreUserNameFromSesson", con1);
                    cmd1.CommandType = CommandType.StoredProcedure;
                    cmd1.Parameters.Add(new SqlParameter("@emailIDorUsername", TextBox1.Text));
                   
                    SqlParameter outPutParameter1 = new SqlParameter();
                    outPutParameter1.ParameterName = "@forsesson";
                    outPutParameter1.SqlDbType = System.Data.SqlDbType.VarChar;
                    outPutParameter1.Size = 4000;
                    outPutParameter1.Direction = System.Data.ParameterDirection.Output;
                    cmd1.Parameters.Add(outPutParameter1);
                    con1.Open();
                    cmd1.ExecuteNonQuery();
                    con1.Close();
                    string result1 = outPutParameter1.Value.ToString();

                    Session["UserDBname"] = result1;

                    Response.Redirect("~/Pages/DashbordUser.aspx?uername=" + TextBox1.Text);
                }
                else
                {
                    Label4.Text = "Incorrect UserID or Password";
                }
            }



        }
    }
}