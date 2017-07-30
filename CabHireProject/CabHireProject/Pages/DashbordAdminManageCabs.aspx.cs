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
    public partial class DashbordAdminManageCabs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string typeofcab;
            if (RadioButton1.Checked)
            {
                typeofcab = "EielX";
            }
            else if (RadioButton2.Checked)
            {
                typeofcab= "EielXL";
            }
            else if (RadioButton3.Checked)
            {
                typeofcab= "EielPOOL";
            }
            else
            {
                typeofcab = "EielX";
            }

            string cbno = TextBox2.Text.Replace("-", "");
            cbno = cbno.Replace(" ", "");

            string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(CN);
            SqlCommand cmd = new SqlCommand("sp_CabDataAddition", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@driverName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@cabNum", cbno);
            cmd.Parameters.AddWithValue("@eielID", TextBox3.Text);
            cmd.Parameters.AddWithValue("@starting", DropDownList1.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@destin", DropDownList2.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@typeofcab", typeofcab);
            cmd.Parameters.AddWithValue("@emailID", TextBox4.Text);
            cmd.Parameters.AddWithValue("@contactNum", TextBox5.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data stored sucessfully to database.";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            DropDownList1.SelectedValue= "-1";
            DropDownList2.SelectedValue = "-1";
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(CN);
            SqlCommand cmd = new SqlCommand("sp_CabDataDeletion", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@eielIdOrCabnum", TextBox6.Text);
            // cmd.Parameters.AddWithValue("@cabnum", TextBox7.Text);

            SqlParameter outPutParameter = new SqlParameter();
            outPutParameter.ParameterName = "@delresult";
            outPutParameter.SqlDbType = System.Data.SqlDbType.Int;
            outPutParameter.Direction = System.Data.ParameterDirection.Output;
            cmd.Parameters.Add(outPutParameter);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string result = outPutParameter.Value.ToString();
            if (result == "0")
            {
                Label2.Text = "NO CAB WITH THIS DETAILS IN DATABASE";
            }
            else if (result == "1")
            {
                Label2.Text = "CAB DELETED FROM THE DATABASE SUCESSFULLY";
            }
            else
            {
                Label2.Text = "MULTIPLE CABS WITH SAME EILE NO. OR CAB NO. DELETED SUCESSFULLY";
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(CN);
            SqlCommand cmd = new SqlCommand("sp_CabDataUpdateSearch", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@eielIdOrCabnum", TextBox8.Text);

            SqlParameter outPutParameter = new SqlParameter();
            outPutParameter.ParameterName = "@outsource";
            outPutParameter.SqlDbType = System.Data.SqlDbType.VarChar;
            outPutParameter.Size = 30;
            outPutParameter.Direction = System.Data.ParameterDirection.Output;
            cmd.Parameters.Add(outPutParameter);

            SqlParameter outPutParameter2 = new SqlParameter();
            outPutParameter2.ParameterName = "@outdestination";
            outPutParameter2.SqlDbType = System.Data.SqlDbType.VarChar;
            outPutParameter2.Size = 30;
            outPutParameter2.Direction = System.Data.ParameterDirection.Output;
            cmd.Parameters.Add(outPutParameter2);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string outsource = outPutParameter.Value.ToString();
            string outdestination = outPutParameter2.Value.ToString();
            if (outsource ==" " || outsource=="")
            {
                Label4.Text = "NO CAB OF THIS NAME PRESENT IN DATABASE";
                Label5.Text = "NO CAB OF THIS NAME PRESENT IN DATABASE";
            }
            else
            {
                Label4.Text = outsource;
                Label5.Text = outdestination;
            }
            

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(CN);
            SqlCommand cmd = new SqlCommand("sp_CabDataUpdateByAdmin", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@cabtoupdate",TextBox8.Text);
            cmd.Parameters.AddWithValue("@newsource", DropDownList3.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@newdestination", DropDownList4.SelectedItem.ToString());

            SqlParameter outPutParameter = new SqlParameter();
            outPutParameter.ParameterName = "@updateresult";
            outPutParameter.SqlDbType = SqlDbType.Int;
            outPutParameter.Direction = System.Data.ParameterDirection.Output;
            cmd.Parameters.Add(outPutParameter);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            string result = outPutParameter.Value.ToString();

            if(result == "0")
            {
                Label3.Text = "NO CAB OF THIS NAME PRESENT IN DATABASE";
            }
            else if(result == "1")
            {
                Label3.Text = "CAB LOCATION UPDATED SUCESSFULLY";
            }
            else
            {
                Label3.Text = "MULTIPLE CABS WITH SAME EILE NO. OR CAB NO. DELETED SUCESSFULLY";
            }

        }
    }
}