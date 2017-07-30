using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CabHireProject
{
    public class RouteCharges
    {
     public int routecost (string start,string end)
        {
            if (start == "Sector15" && end == "Sector18")
                return (30);
            else if (start == "Sector15" && end == "Sector16")
                return (20);
            else if (start == "Sector15" && end == "Sector15")
                return (0);
            else if (start == "Sector16" && end == "Sector15")
                return (10);
            else if (start == "Sector16" && end == "Sector16")
                return (0);
            else if (start == "Sector16" && end == "Sector18")
                return (10);
            else if (start == "Sector18" && end == "Sector16")
                return (10);
            else if (start == "Sector18" && end == "Sector15")
                return (20);
            else if (start == "Sector18" && end == "Sector18")
                return (0);
            else
                return (0);
        }
    }
}