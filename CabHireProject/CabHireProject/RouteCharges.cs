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
            //if (start == "Sector15" && end == "Sector18")
            //    return (30);
            //else if (start == "Sector15" && end == "Sector16")
            //    return (20);
            //else if (start == "Sector15" && end == "Sector15")
            //    return (0);
            //else if (start == "Sector16" && end == "Sector15")
            //    return (10);
            //else if (start == "Sector16" && end == "Sector16")
            //    return (0);
            //else if (start == "Sector16" && end == "Sector18")
            //    return (10);
            //else if (start == "Sector18" && end == "Sector16")
            //    return (10);
            //else if (start == "Sector18" && end == "Sector15")
            //    return (20);
            //else if (start == "Sector18" && end == "Sector18")
            //    return (0);

            if (start == "Sector18" && end == "Azadpur")
                return (150);
            else if (start == "Sector18" && end == "KashmereGate")
                return (120);
            else if (start == "Sector18" && end == "RajeevChowk")
                return (100);
            else if (start == "Sector18" && end == "GreenPark")
                return (100);
            else if (start == "Sector18" && end == "Sikandarpur")
                return (200);
            else if (start == "Sector18" && end == "HuddaCityCenter")
                return (200);
            else if (start == "Sector18" && end == "Vaishali")
                return (150);
            else if (start == "Sector18" && end == "Sector18")
                return (0);
            else if (start == "Sector18" && end == "BotnicalGarden")
                return (50);
            else if (start == "Sector18" && end == "NoidaCityCenter")
                return (80);
            else if (start == "Sector18" && end == "YamunaBank")
                return (50);
            else if (start == "Sector18" && end == "Airport")
                return (250);
            else if (start == "Sector18" && end == "Rithala")
                return (300);
            else if (start == "Sector18" && end == "Okhla")
                return (250);

            else if (start == "Azadpur" && end == "Azadpur")
                return (0);
            else if (start == "Azadpur" && end == "KashmereGate")
                return (100);
            else if (start == "Azadpur" && end == "RajeevChowk")
                return (100);
            else if (start == "Azadpur" && end == "GreenPark")
                return (120);
            else if (start == "Azadpur" && end == "Sikandarpur")
                return (200);
            else if (start == "Azadpur" && end == "HuddaCityCenter")
                return (300);
            else if (start == "Azadpur" && end == "Vaishali")
                return (250);
            else if (start == "Azadpur" && end == "Sector18")
                return (200);
            else if (start == "Azadpur" && end == "BotnicalGarden")
                return (250);
            else if (start == "Azadpur" && end == "NoidaCityCenter")
                return (300);
            else if (start == "Azadpur" && end == "YamunaBank")
                return (200);
            else if (start == "Azadpur" && end == "Airport")
                return (350);
            else if (start == "Azadpur" && end == "Rithala")
                return (300);
            else if (start == "Azadpur" && end == "Okhla")
                return (250);

            else if (start == "KashmereGate" && end == "Azadpur")
                return (50);
            else if (start == "KashmereGate" && end == "KashmereGate")
                return (0);
            else if (start == "KashmereGate" && end == "RajeevChowk")
                return (50);
            else if (start == "KashmereGate" && end == "GreenPark")
                return (150);
            else if (start == "KashmereGate" && end == "Sikandarpur")
                return (200);
            else if (start == "KashmereGate" && end == "HuddaCityCenter")
                return (250);
            else if (start == "KashmereGate" && end == "Vaishali")
                return (250);
            else if (start == "KashmereGate" && end == "Sector18")
                return (200);
            else if (start == "KashmereGate" && end == "BotnicalGarden")
                return (250);
            else if (start == "KashmereGate" && end == "NoidaCityCenter")
                return (300);
            else if (start == "KashmereGate" && end == "YamunaBank")
                return (200);
            else if (start == "KashmereGate" && end == "Airport")
                return (350);
            else if (start == "KashmereGate" && end == "Rithala")
                return (200);
            else if (start == "KashmereGate" && end == "Okhla")
                return (250);

            else if (start == "RajeevChowk" && end == "Azadpur")
                return (100);
            else if (start == "RajeevChowk" && end == "KashmereGate")
                return (50);
            else if (start == "RajeevChowk" && end == "RajeevChowk")
                return (0);
            else if (start == "RajeevChowk" && end == "GreenPark")
                return (150);
            else if (start == "RajeevChowk" && end == "Sikandarpur")
                return (200);
            else if (start == "RajeevChowk" && end == "HuddaCityCenter")
                return (250);
            else if (start == "RajeevChowk" && end == "Vaishali")
                return (250);
            else if (start == "RajeevChowk" && end == "Sector18")
                return (200);
            else if (start == "RajeevChowk" && end == "BotnicalGarden")
                return (250);
            else if (start == "RajeevChowk" && end == "NoidaCityCenter")
                return (300);
            else if (start == "RajeevChowk" && end == "YamunaBank")
                return (200);
            else if (start == "RajeevChowk" && end == "Airport")
                return (350);
            else if (start == "RajeevChowk" && end == "Rithala")
                return (250);
            else if (start == "RajeevChowk" && end == "Okhla")
                return (250);

            else if (start == "GreenPark" && end == "Azadpur")
                return (200);
            else if (start == "GreenPark" && end == "KashmereGate")
                return (150);
            else if (start == "GreenPark" && end == "RajeevChowk")
                return (150);
            else if (start == "GreenPark" && end == "GreenPark")
                return (0);
            else if (start == "GreenPark" && end == "Sikandarpur")
                return (100);
            else if (start == "GreenPark" && end == "HuddaCityCenter")
                return (200);
            else if (start == "GreenPark" && end == "Vaishali")
                return (300);
            else if (start == "GreenPark" && end == "Sector18")
                return (250);
            else if (start == "GreenPark" && end == "BotnicalGarden")
                return (250);
            else if (start == "GreenPark" && end == "NoidaCityCenter")
                return (300);
            else if (start == "GreenPark" && end == "YamunaBank")
                return (200);
            else if (start == "GreenPark" && end == "Airport")
                return (300);
            else if (start == "GreenPark" && end == "Rithala")
                return (350);
            else if (start == "GreenPark" && end == "Okhla")
                return (150);

            else if (start == "Sikandarpur" && end == "Azadpur")
                return (200);
            else if (start == "Sikandarpur" && end == "KashmereGate")
                return (200);
            else if (start == "Sikandarpur" && end == "RajeevChowk")
                return (200);
            else if (start == "Sikandarpur" && end == "GreenPark")
                return (0);
            else if (start == "Sikandarpur" && end == "Sikandarpur")
                return (100);
            else if (start == "Sikandarpur" && end == "HuddaCityCenter")
                return (100);
            else if (start == "Sikandarpur" && end == "Vaishali")
                return (300);
            else if (start == "Sikandarpur" && end == "Sector18")
                return (200);
            else if (start == "Sikandarpur" && end == "BotnicalGarden")
                return (250);
            else if (start == "Sikandarpur" && end == "NoidaCityCenter")
                return (300);
            else if (start == "Sikandarpur" && end == "YamunaBank")
                return (200);
            else if (start == "Sikandarpur" && end == "Airport")
                return (300);
            else if (start == "Sikandarpur" && end == "Rithala")
                return (350);
            else if (start == "Sikandarpur" && end == "Okhla")
                return (200);

            else if (start == "HuddaCityCenter" && end == "Azadpur")
                return (300);
            else if (start == "HuddaCityCenter" && end == "KashmereGate")
                return (250);
            else if (start == "HuddaCityCenter" && end == "RajeevChowk")
                return (250);
            else if (start == "HuddaCityCenter" && end == "GreenPark")
                return (200);
            else if (start == "HuddaCityCenter" && end == "Sikandarpur")
                return (100);
            else if (start == "HuddaCityCenter" && end == "HuddaCityCenter")
                return (0);
            else if (start == "HuddaCityCenter" && end == "Vaishali")
                return (300);
            else if (start == "HuddaCityCenter" && end == "Sector18")
                return (200);
            else if (start == "HuddaCityCenter" && end == "BotnicalGarden")
                return (250);
            else if (start == "HuddaCityCenter" && end == "NoidaCityCenter")
                return (300);
            else if (start == "HuddaCityCenter" && end == "YamunaBank")
                return (200);
            else if (start == "HuddaCityCenter" && end == "Airport")
                return (200);
            else if (start == "HuddaCityCenter" && end == "Rithala")
                return (350);
            else if (start == "HuddaCityCenter" && end == "Okhla")
                return (300);

            else if (start == "Vaishali" && end == "Azadpur")
                return (250);
            else if (start == "Vaishali" && end == "KashmereGate")
                return (250);
            else if (start == "Vaishali" && end == "RajeevChowk")
                return (250);
            else if (start == "Vaishali" && end == "GreenPark")
                return (300);
            else if (start == "Vaishali" && end == "Sikandarpur")
                return (300);
            else if (start == "Vaishali" && end == "HuddaCityCenter")
                return (300);
            else if (start == "Vaishali" && end == "Vaishali")
                return (0);
            else if (start == "Vaishali" && end == "Sector18")
                return (150);
            else if (start == "Vaishali" && end == "BotnicalGarden")
                return (250);
            else if (start == "Vaishali" && end == "NoidaCityCenter")
                return (300);
            else if (start == "Vaishali" && end == "YamunaBank")
                return (200);
            else if (start == "Vaishali" && end == "Airport")
                return (350);
            else if (start == "Vaishali" && end == "Rithala")
                return (350);
            else if (start == "Vaishali" && end == "Okhla")
                return (300);

            else if (start == "BotnicalGarden" && end == "Azadpur")
                return (250);
            else if (start == "BotnicalGarden" && end == "KashmereGate")
                return (250);
            else if (start == "BotnicalGarden" && end == "RajeevChowk")
                return (250);
            else if (start == "BotnicalGarden" && end == "GreenPark")
                return (250);
            else if (start == "BotnicalGarden" && end == "Sikandarpur")
                return (250);
            else if (start == "BotnicalGarden" && end == "HuddaCityCenter")
                return (250);
            else if (start == "BotnicalGarden" && end == "Vaishali")
                return (250);
            else if (start == "BotnicalGarden" && end == "Sector18")
                return (50);
            else if (start == "BotnicalGarden" && end == "BotnicalGarden")
                return (0);
            else if (start == "BotnicalGarden" && end == "NoidaCityCenter")
                return (50);
            else if (start == "BotnicalGarden" && end == "YamunaBank")
                return (100);
            else if (start == "BotnicalGarden" && end == "Airport")
                return (350);
            else if (start == "BotnicalGarden" && end == "Rithala")
                return (350);
            else if (start == "BotnicalGarden" && end == "Okhla")
                return (300);

            else if (start == "NoidaCityCenter" && end == "Azadpur")
                return (300);
            else if (start == "NoidaCityCenter" && end == "KashmereGate")
                return (300);
            else if (start == "NoidaCityCenter" && end == "RajeevChowk")
                return (300);
            else if (start == "NoidaCityCenter" && end == "GreenPark")
                return (300);
            else if (start == "NoidaCityCenter" && end == "Sikandarpur")
                return (300);
            else if (start == "NoidaCityCenter" && end == "HuddaCityCenter")
                return (300);
            else if (start == "NoidaCityCenter" && end == "Vaishali")
                return (300);
            else if (start == "NoidaCityCenter" && end == "Sector18")
                return (80);
            else if (start == "NoidaCityCenter" && end == "BotnicalGarden")
                return (50);
            else if (start == "NoidaCityCenter" && end == "NoidaCityCenter")
                return (0);
            else if (start == "NoidaCityCenter" && end == "YamunaBank")
                return (100);
            else if (start == "NoidaCityCenter" && end == "Airport")
                return (400);
            else if (start == "NoidaCityCenter" && end == "Rithala")
                return (350);
            else if (start == "NoidaCityCenter" && end == "Okhla")
                return (400);

            else if (start == "YamunaBank" && end == "Azadpur")
                return (200);
            else if (start == "YamunaBank" && end == "KashmereGate")
                return (200);
            else if (start == "YamunaBank" && end == "RajeevChowk")
                return (200);
            else if (start == "YamunaBank" && end == "GreenPark")
                return (200);
            else if (start == "YamunaBank" && end == "Sikandarpur")
                return (200);
            else if (start == "YamunaBank" && end == "HuddaCityCenter")
                return (200);
            else if (start == "YamunaBank" && end == "Vaishali")
                return (200);
            else if (start == "YamunaBank" && end == "Sector18")
                return (50);
            else if (start == "YamunaBank" && end == "BotnicalGarden")
                return (100);
            else if (start == "YamunaBank" && end == "NoidaCityCenter")
                return (100);
            else if (start == "YamunaBank" && end == "YamunaBank")
                return (0);
            else if (start == "YamunaBank" && end == "Airport")
                return (300);
            else if (start == "YamunaBank" && end == "Rithala")
                return (350);
            else if (start == "YamunaBank" && end == "Okhla")
                return (200);

            else if (start == "Airport" && end == "Azadpur")
                return (350);
            else if (start == "Airport" && end == "KashmereGate")
                return (350);
            else if (start == "Airport" && end == "RajeevChowk")
                return (350);
            else if (start == "Airport" && end == "GreenPark")
                return (300);
            else if (start == "Airport" && end == "Sikandarpur")
                return (300);
            else if (start == "Airport" && end == "HuddaCityCenter")
                return (200);
            else if (start == "Airport" && end == "Vaishali")
                return (350);
            else if (start == "Airport" && end == "Sector18")
                return (250);
            else if (start == "Airport" && end == "BotnicalGarden")
                return (350);
            else if (start == "Airport" && end == "NoidaCityCenter")
                return (400);
            else if (start == "Airport" && end == "YamunaBank")
                return (300);
            else if (start == "Airport" && end == "Airport")
                return (0);
            else if (start == "Airport" && end == "Rithala")
                return (350);
            else if (start == "Airport" && end == "Okhla")
                return (300);

            else if (start == "Rithala" && end == "Azadpur")
                return (300);
            else if (start == "Rithala" && end == "KashmereGate")
                return (200);
            else if (start == "Rithala" && end == "RajeevChowk")
                return (250);
            else if (start == "Rithala" && end == "GreenPark")
                return (350);
            else if (start == "Rithala" && end == "Sikandarpur")
                return (350);
            else if (start == "Rithala" && end == "HuddaCityCenter")
                return (350);
            else if (start == "Rithala" && end == "Vaishali")
                return (350);
            else if (start == "Rithala" && end == "Sector18")
                return (300);
            else if (start == "Rithala" && end == "BotnicalGarden")
                return (350);
            else if (start == "Rithala" && end == "NoidaCityCenter")
                return (350);
            else if (start == "Rithala" && end == "YamunaBank")
                return (350);
            else if (start == "Rithala" && end == "Airport")
                return (350);
            else if (start == "Rithala" && end == "Rithala")
                return (0);
            else if (start == "Rithala" && end == "Okhla")
                return (400);

            else if (start == "Okhla" && end == "Azadpur")
                return (250);
            else if (start == "Okhla" && end == "KashmereGate")
                return (250);
            else if (start == "Okhla" && end == "RajeevChowk")
                return (250);
            else if (start == "Okhla" && end == "GreenPark")
                return (150);
            else if (start == "Okhla" && end == "Sikandarpur")
                return (200);
            else if (start == "Okhla" && end == "HuddaCityCenter")
                return (300);
            else if (start == "Okhla" && end == "Vaishali")
                return (300);
            else if (start == "Okhla" && end == "Sector18")
                return (250);
            else if (start == "Okhla" && end == "BotnicalGarden")
                return (300);
            else if (start == "Okhla" && end == "NoidaCityCenter")
                return (300);
            else if (start == "Okhla" && end == "YamunaBank")
                return (200);
            else if (start == "Okhla" && end == "Airport")
                return (300);
            else if (start == "Okhla" && end == "Rithala")
                return (400);
            else if (start == "Okhla" && end == "Okhla")
                return (0);

            else
                return (0);
        }
    }
}