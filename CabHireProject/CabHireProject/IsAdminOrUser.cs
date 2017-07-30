using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CabHireProject
{
    public class IsAdminOrUser
    {
        public bool verifyuserandadmin (string urerid,string password)
        {
            if(urerid=="Ayush" && password == "121")
            {
                return true;
            }
            else if (urerid == "Sachin" && password == "121")
            {
                return true;
            }
            else if (urerid == "Mohit" && password == "121")
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}