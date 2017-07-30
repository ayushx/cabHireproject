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
    public partial class SignUpPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            
            if (Page.IsValid)
            {
                Session["userFname"] = TextBox1.Text;
                Session["userLname"] = TextBox2.Text;

               // string CN = "data source=.;database = CabHireProject;Integrated security=SSPI";
                string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection con = new SqlConnection(CN);
                
                SqlCommand cmdval = new SqlCommand("sp_ValidationEmailUsername", con);
                cmdval.Parameters.Add(new SqlParameter("@emailval", TextBox3.Text));
                cmdval.Parameters.Add(new SqlParameter("@usernameval", TextBox7.Text));
                cmdval.CommandType = CommandType.StoredProcedure;
                SqlParameter outPutParameter = new SqlParameter();
                outPutParameter.ParameterName = "@valresult";
                outPutParameter.SqlDbType = System.Data.SqlDbType.Int;
                outPutParameter.Direction = System.Data.ParameterDirection.Output;
                cmdval.Parameters.Add(outPutParameter);

                con.Open();
                cmdval.ExecuteNonQuery();
                string valresult = outPutParameter.Value.ToString();
                if (valresult == "0")
                {
                    string gender;
                    if (RadioButton1.Checked)
                    {
                        gender = "Male";
                    }
                    else if (RadioButton2.Checked)
                    {
                        gender = "Female";
                    }
                    else
                    {
                        gender = " ";
                    }

                    SqlCommand cmd = new SqlCommand("sp_registration", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@FirstName", TextBox1.Text));
                    cmd.Parameters.Add(new SqlParameter("@LastName", TextBox2.Text));
                    cmd.Parameters.Add(new SqlParameter("@Username", TextBox7.Text));
                    cmd.Parameters.Add(new SqlParameter("@EmailId", TextBox3.Text));
                    cmd.Parameters.Add(new SqlParameter("@pass", TextBox4.Text));
                    cmd.Parameters.Add(new SqlParameter("@gender", gender));
                    cmd.Parameters.Add(new SqlParameter("@DOBday", DropDownList1.SelectedItem.Text));
                    cmd.Parameters.Add(new SqlParameter("@DOBmounth", DropDownList2.SelectedItem.Text));
                    cmd.Parameters.Add(new SqlParameter("@DOByear", DropDownList3.SelectedItem.Text));
                    cmd.Parameters.Add(new SqlParameter("@PhoneNo", TextBox6.Text));

                    SqlCommand cmdTable = new SqlCommand("sp_CreateUserTable1",con);
                    cmdTable.CommandType = CommandType.StoredProcedure;
                    cmdTable.Parameters.Add(new SqlParameter("@userNameTable", TextBox7.Text));

                    SqlCommand cmdTriger = new SqlCommand("sp_CreateUserTable_Trigger1", con);
                    cmdTriger.CommandType = CommandType.StoredProcedure;
                    cmdTriger.Parameters.Add(new SqlParameter("@cretetable_triger", TextBox7.Text));


                    // con.Open(); //Connection alredy open
                    cmdTable.ExecuteNonQuery();
                    cmdTriger.ExecuteNonQuery();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Redirect("~/Pages/SignUpCompleated.aspx?userFname="+TextBox1.Text+"&userLname="+TextBox2.Text);
                    // Response.Redirect("~/Index.aspx");
                    // Response.Write("done");
                }
                else
                {
                    Label10.Text = "Email ID or UserName already exist";
                }


            }
            else
            {

               Response.Write("errror");
            }

        }

        protected void reset_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox7.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            DropDownList1.SelectedValue = "-1";
            DropDownList2.SelectedValue = "-1";
            DropDownList3.SelectedValue = "-1";
        }
    }
}