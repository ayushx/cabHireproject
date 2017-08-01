using System;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;


namespace CabHireProject
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            JobScheduler.Start();
        }
    }
}