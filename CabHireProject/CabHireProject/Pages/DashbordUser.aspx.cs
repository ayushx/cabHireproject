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
    public partial class DashbordUser : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            
            if (string.IsNullOrEmpty(Session["UserDBname"] as string))
            {
                Response.Redirect("~/Pages/Logout_Error.aspx");
            }
        

        GridView1.Visible = false;
            //TextBox1.Visible = false;
            Button3.Visible = false;
            Label1.Visible = false;
            divtohidde.Visible = false;
            //Label4.Visible = false;

            // Button2.Visible = false;

        }

        protected void Page_Load(object sender, EventArgs e)
        {
          //  string username = Request.QueryString["uername"];
          //  Label4.Text = Request.QueryString["uername"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label2.Text = "";
            toHideAfteCompleatBooking.Visible = true;
            RouteCharges cost = new RouteCharges();
            int costofbooking =  cost.routecost(DropDownList1.SelectedItem.Value, DropDownList2.SelectedItem.Value);
            Label1.Text = "Your fare for traveling will be " +costofbooking.ToString()+ "₹";

            string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(CN);
            SqlCommand cmd = new SqlCommand("sp_FetchCabDetailAcUser_NewLogic", con);
            cmd.CommandType = CommandType.StoredProcedure;
            string dropdowniterm = DropDownList1.SelectedValue.ToString();
            cmd.Parameters.AddWithValue("@yourloc", DropDownList1.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@yourdestin", DropDownList2.SelectedValue.ToString());

            SqlParameter outPutParameter = new SqlParameter();
            outPutParameter.ParameterName = "@result";
            outPutParameter.SqlDbType = SqlDbType.Int;
            outPutParameter.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(outPutParameter);

            SqlParameter outPutParameter1 = new SqlParameter();
            outPutParameter1.ParameterName = "@result1";
            outPutParameter1.SqlDbType = SqlDbType.Int;
            outPutParameter1.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(outPutParameter1);

            con.Open();
            cmd.ExecuteNonQuery();

            string result =outPutParameter.Value.ToString();
            string result1 = outPutParameter1.Value.ToString();

            if (result == "0" || result1=="0")
            {
                divtohidde.Visible = false;
                GridView1.Visible = false;
               // TextBox1.Visible = false;
                Label1.Visible = false;
                Button3.Visible = false;

                Label3.Text = "NO CABS FOR THIS ROUTE ARE CURENTLY AVAILABLE";
                con.Close();
            }
            else
            {
                con.Close();

                string CN1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection con1 = new SqlConnection(CN1);
                SqlCommand cmd1 = new SqlCommand("select DriverName, CabNum,Typeofcab,EmailID,ContactNum,DriverType,SerialNo from CabDatabase_Admin where Starting = '" + DropDownList1.SelectedValue.ToString() + "' and Destin = '" + DropDownList2.SelectedValue.ToString() + "'", con1);
                Label3.Text = "";
                divtohidde.Visible = true;
                //TextBox1.Visible = true;
                Button3.Visible = true;
               // Label2.Visible = true;
                Label1.Visible = true;
                GridView1.Visible = true;
               // Button2.Visible = true;
                con1.Open();
                cmd1.ExecuteNonQuery();
                GridView1.DataSource = cmd1.ExecuteReader();
                GridView1.DataBind();
                con1.Close();
                
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            string CabNoSelected = Request.Form["RadioButton1"].ToString();

            string username = Session["UserDBname"].ToString();
            string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(CN);
            SqlCommand cmd = new SqlCommand("sp_BookTheCab_DelfromDB_AddInUserDB2",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CabNOtoBook", CabNoSelected);
            cmd.Parameters.AddWithValue("@username", username);

            SqlParameter outPutParameter = new SqlParameter();
            outPutParameter.ParameterName = "@result";
            outPutParameter.Direction = ParameterDirection.Output;
            outPutParameter.SqlDbType = SqlDbType.Int;
            cmd.Parameters.Add(outPutParameter);
            con.Open();
            cmd.ExecuteNonQuery();

            string result = outPutParameter.Value.ToString();
            
            if (result == "0")
            {

                //SqlCommand cmd1 = new SqlCommand("select ContactNum from CabDatabase_Admin where CabNum = '"+TextBox1.Text+"'", con);
                toHideAfteCompleatBooking.Visible = false;

                string CabNoSelected1 = Request.Form["RadioButton1"].ToString();
                string CN1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection con1 = new SqlConnection(CN1);
                SqlCommand cmd1 = new SqlCommand("select PhoneNo from "+username+ " where CabNoBooked = '" + CabNoSelected1 + "'", con1);
                con1.Open();
                string num = cmd1.ExecuteScalar().ToString();
                con1.Close();

                Label2.Text = "CAB IS BOOKED SUCESSFULLY PLEASE CONTACT : "+ num;
                con.Close();
            }
            else
            {
                Label2.Text = "NO CAB WITH THIS CAB NUMBER FOUND";
                con.Close();
            }

                

        }
    }
}