﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Quartz;
using System.IO;
using System.Net.Mail;
using System.Net;
using System.Web.UI;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace CabHireProject
{
    public class EmailJob : IJob
    {
        public void Execute(IJobExecutionContext context)
        {
            //using (MailMessage mailMessage = new MailMessage())
            //{
            //    mailMessage.From =
            //    new MailAddress(ConfigurationManager.AppSettings["FromMail"]);
            //    mailMessage.Subject = "SchedulerEmail";
            //    mailMessage.Body = "Test Body SchedulerEmail";
            //    mailMessage.IsBodyHtml = true;
            //    mailMessage.To.Add(new MailAddress("RecepientEmail@gmail.com"));
            //    SmtpClient smtp = new SmtpClient();
            //    smtp.Host = ConfigurationManager.AppSettings["Host"];
            //    System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
            //    NetworkCred.UserName = ConfigurationManager.AppSettings["FromMail"];
            //    NetworkCred.Password = ConfigurationManager.AppSettings["Password"];
            //    smtp.UseDefaultCredentials = true;
            //    smtp.Credentials = NetworkCred;
            //    smtp.Port = Convert.ToInt32(ConfigurationManager.AppSettings["Port"]);
            //    smtp.EnableSsl = true;
            //    smtp.Send(mailMessage);
            //}

            string CN = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(CN);
            SqlCommand cmd = new SqlCommand("execute sp_AutoCabRemovalFromUserDBtoCabDBfor30MIn1", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }

    }
}