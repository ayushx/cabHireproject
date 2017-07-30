﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace CabHireProject.Pages
{
    public partial class DashbordAdminViewDB : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(CN);
            SqlCommand cmd = new SqlCommand("select * from CabDatabase_Admin", con);
            con.Open();
            cmd.ExecuteNonQuery();
            
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }
       

        protected void Button2_Click(object sender, EventArgs e)
        {
            string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(CN);
            SqlCommand cmd = new SqlCommand("select * from CabDatabase_Admin_AuditTable", con);
            con.Open();
            cmd.ExecuteNonQuery();

            GridView2.DataSource = cmd.ExecuteReader();
            
            GridView2.DataBind();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(CN);
            SqlCommand cmd = new SqlCommand("select * from RegistrationData", con);
            con.Open();
            cmd.ExecuteNonQuery();

            GridView3.DataSource = cmd.ExecuteReader();
            GridView3.DataBind();
            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(CN);
            SqlCommand cmd = new SqlCommand("sp_SearchUserForAdmin", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@tablename",TextBox1.Text);

            SqlParameter outPutParameter = new SqlParameter();
            outPutParameter.ParameterName = "@result";
            outPutParameter.Direction = ParameterDirection.Output;
            outPutParameter.SqlDbType = SqlDbType.VarChar;
            outPutParameter.Size = 20;
            cmd.Parameters.Add(outPutParameter);
            con.Open();
            cmd.ExecuteNonQuery();
            //con.Close();

            string result = outPutParameter.Value.ToString();
            if(result ==TextBox1.Text)
            {
                //string CN1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                //SqlConnection con1 = new SqlConnection(CN1);
                SqlCommand cmd1 = new SqlCommand("select * from "+result, con);
                //con1.Open();
                cmd1.ExecuteNonQuery();
                GridView4.DataSource = cmd1.ExecuteReader();
                GridView4.DataBind();
                con.Close();
            }
            else if (result== ""|| result==" " || result== null)
            {
                Label1.Text = "NO SUCH USER FOUND ON DATABASE";
                con.Close();
            }

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(CN);
            SqlCommand cmd = new SqlCommand("sp_SearchDriversForAdmin", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Cabno", TextBox2.Text);

            SqlParameter outPutParameter = new SqlParameter();
            outPutParameter.ParameterName = "@result";
            outPutParameter.Direction = ParameterDirection.Output;
            outPutParameter.SqlDbType = SqlDbType.VarChar;
            outPutParameter.Size = 20;
            cmd.Parameters.Add(outPutParameter);
            con.Open();
            cmd.ExecuteNonQuery();
            //con.Close();

            string result = outPutParameter.Value.ToString();
            if (result == TextBox2.Text)
            {
                //string CN1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                //SqlConnection con1 = new SqlConnection(CN1); 
                SqlCommand cmd1 = new SqlCommand("select * from DriverRegistrationData where CabNo = '"+ TextBox2.Text+"'",con);
                //con1.Open();
                cmd1.ExecuteNonQuery();
                GridView4.DataSource = cmd1.ExecuteReader();
                GridView4.DataBind();
                con.Close();
            }
            else if (result == "" || result == " " || result == null)
            {
                Label2.Text = "NO SUCH CAAB FOUND ON DATABASE";
                con.Close();
            }
        }

    }
}