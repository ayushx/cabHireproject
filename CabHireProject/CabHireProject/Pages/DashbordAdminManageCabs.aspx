<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashbordAdminManageCabs.aspx.cs" Inherits="CabHireProject.Pages.DashbordAdminManageCabs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Eile</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-1.9.1.min.js"></script>
    <link href="../Style/DashbordUser.css" rel="stylesheet" />
    <script src="../AdditionalScript/DashbordUser.js"></script>
    <link href="../Style/footer.css" rel="stylesheet" />
    <script> //for registration form
        $(document).ready(function () {
            $('#found_site').on('change', function () {
                $(this).val() == "other" ? $('#specify').closest('.form-group').show() : $('#specify').closest('.form-group').hide();
            })
        })
    </script>
    <style>
        /*for registration form*/
        form * {
            border-radius: 0 !important;
        }

        form > fieldset > legend {
            font-size: 120%;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <!-- Fixed navbar -->
        <asp:ScriptManager ID="scr" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="panel1" runat="server">
            <ContentTemplate>
                <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <div class="small-logo-container">
                                <a class="small-logo" href="#">Eiel<span style="color: gold;">.</span></a>
                            </div>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="DashbordAdmin.aspx">Home</a></li>
                                <li class="active_user"><a href="#">Manage Cabs</a></li>
                                <li><a href="DashbordAdminViewDB.aspx">Total DB</a></li>
                                <li><a href="LogOut.aspx">Logout</a></li>
                            </ul>
                        </div>
                        <!--/.nav-collapse -->
                    </div>
                </div>
                <div class="container-fluid big-logo-row">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 big-logo-container">
                                <h1 class="big-logo">Eiel<span style="color: gold;">.</span></h1>
                            </div>
                            <!--/.col-xs-12 -->
                        </div>
                        <!--/.row -->
                    </div>
                    <!--/.container -->
                </div>
                <!--/.container-fluid -->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-6 col-sm-8">
                            <br />
                            <br />
                            <br />
                            <h2 style="font-weight: bolder; font-size: 50px; letter-spacing: 7px; font-family: Dosis;">About Us</h2>
                            <br />
                            <br />
                            <br />
                            <p class="text-left" style="font-size: 20px; font-weight: 800; font-family: Dosis;">
                                Eiel Car Rentals is an online cab booking aggregator that aims to provide reliable, affordable and safe taxi services to its travellers.
                         With operations across Delhi and Delhi NCR, Eiel is uniquely placed as the largest car rental company in India in terms of geographical reach.
                         Eiel provides inter taxi booking services as well as local cab services. 
                            </p>
                            <p class="text-left" style="font-size: 18px; font-weight: 800; font-family: Dosis;">
                                Eiel has been in the car rental industry for more than a decade now and has continuously delivered best in class services across outstation and local trips.
                         Improving on the quality of services year on year is what makes Eiel a household name in the car rental industry. Eiel also provides customers an option of 
                        booking package services for certain available routes. 
                            </p>
                            <p class="text-left" style="font-size: 18px; font-weight: 800; font-family: Dosis;">
                                Outstation car rental services being its prime category, Eiel has also introduced One way cab services for specific customer preferences and needs.
                         You can avoid booking the cab for two way journeys if you have not planned for the return trip. On the whole, we believe that Eiel is the perfect option for the customers
                         looking for reliable car rental services.
                            </p>
                            <br />
                            <br />
                            <br />

                        </div>
                        <!--/.col-xs-12 -->
                    </div>
                    <!--/.row -->
                    <!--end of nav bar -->

                    <div class="container">
                        <div class="row">

                            <div class="col-md-8 col-md-offset-2">
                                <br>
                                <legend style="color: blue; font-size=25px;">Add Cabs to Database</legend>

                                <fieldset>
                                    <legend>Enter Cab Detais</legend>

                                    <div class="form-group col-md-6">
                                        <label for="first_name">Driver Name</label>
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Username">
                                        </asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="first_name">Cab Number</label>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Cab Number">
                                        </asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="first_name">Eile ID</label>
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="EIL-XXXX">
                                        </asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="country">Source</label>
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                            <asp:ListItem Value="-1">Your Location</asp:ListItem>
                                            <asp:ListItem Value="Azadpur">Azadpur</asp:ListItem>
                                            <asp:ListItem Value="RajeevChowk">RajeevChowk</asp:ListItem>
                                            <asp:ListItem Value="KashmereGate">KashmereGate</asp:ListItem>
                                            <asp:ListItem Value="GreenPark">GreenPark</asp:ListItem>
                                            <asp:ListItem Value="Sikandarpur">Sikandarpur</asp:ListItem>
                                            <asp:ListItem Value="HuddaCityCenter">HuddaCityCenter</asp:ListItem>
                                            <asp:ListItem Value="Vaishali">Vaishali</asp:ListItem>
                                            <asp:ListItem Value="Sector18">Sector18</asp:ListItem>
                                            <asp:ListItem Value="BotnicalGarden">BotnicalGarden</asp:ListItem>
                                            <asp:ListItem Value="NoidaCityCenter">NoidaCityCenter</asp:ListItem>
                                            <asp:ListItem Value="YamunaBank">YamunaBank</asp:ListItem>
                                            <asp:ListItem Value="Airport">Airport</asp:ListItem>
                                            <asp:ListItem Value="Rithala">Rithala</asp:ListItem>
                                            <asp:ListItem Value="Okhla">Okhla</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="country">Destinaton</label>
                                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                                            <asp:ListItem Value="-1">Your Location</asp:ListItem>
                                            <asp:ListItem Value="Azadpur">Azadpur</asp:ListItem>
                                            <asp:ListItem Value="RajeevChowk">RajeevChowk</asp:ListItem>
                                            <asp:ListItem Value="KashmereGate">KashmereGate</asp:ListItem>
                                            <asp:ListItem Value="GreenPark">GreenPark</asp:ListItem>
                                            <asp:ListItem Value="Sikandarpur">Sikandarpur</asp:ListItem>
                                            <asp:ListItem Value="HuddaCityCenter">HuddaCityCenter</asp:ListItem>
                                            <asp:ListItem Value="Vaishali">Vaishali</asp:ListItem>
                                            <asp:ListItem Value="Sector18">Sector18</asp:ListItem>
                                            <asp:ListItem Value="BotnicalGarden">BotnicalGarden</asp:ListItem>
                                            <asp:ListItem Value="NoidaCityCenter">NoidaCityCenter</asp:ListItem>
                                            <asp:ListItem Value="YamunaBank">YamunaBank</asp:ListItem>
                                            <asp:ListItem Value="Airport">Airport</asp:ListItem>
                                            <asp:ListItem Value="Rithala">Rithala</asp:ListItem>
                                            <asp:ListItem Value="Okhla">Okhla</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                    <div>
                                        <div class="form-group col-md-6">
                                            <label for="cabs">Type of Cab</label>
                                            <asp:RadioButton ID="RadioButton2" runat="server" CssClass="form-control" Text="EielX" RepeatDirection="Vertical" GroupName="cartype" />
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label class="label_item" for="radio1" style="padding-top: 25px;">
                                                <img src="../Images/adminCarimg.jpg" />
                                            </label>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="form-group col-md-6">
                                            <label for="cabs">Type of Cab</label>
                                            <asp:RadioButton ID="RadioButton1" runat="server" CssClass="form-control" Text="EielXL" RepeatDirection="Vertical" GroupName="cartype" />
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label class="label_item" for="radio1" style="padding-top: 25px;">
                                                <img src="../Images/adminCarimg.jpg" />
                                            </label>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="form-group col-md-6">
                                            <label for="cabs">Type of Cab</label>
                                            <asp:RadioButton ID="RadioButton3" runat="server" CssClass="form-control" Text="EielPOOL" RepeatDirection="Vertical" GroupName="cartype" />
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label class="label_item" for="radio1" style="padding-top: 25px;">
                                                <img src="../Images/adminCarimg.jpg" />
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="first_name">Email ID</label>
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Username">
                                        </asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="first_name">Contact Number</label>
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Username">
                                        </asp:TextBox>
                                    </div>

                                    <legend></legend>


                                    <div class="form-group">
                                        <div class="col-md-6">
                                            <asp:Button ID="Button1" runat="server" Text="Add to database" CssClass="btn btn-primary" Width="200px" OnClick="Button1_Click" UseSubmitBehavior="False" />

                                        </div>
                                        <div class="col-md-6">
                                            <asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label>
                                        </div>
                                    </div>
                                    <legend>
                                        <br>
                                    </legend>
                                </fieldset>
                                <br>
                                <legend style="color: indianred; font-size=25px;">Delete Cabs from Database</legend>
                                <br />
                                <fieldset>
                                    <legend>Enter Cab Detais</legend>
                                    <div class="form-group col-md-12">
                                        <label for="first_name">Eiel id or Cab Number</label>
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="EIL-XXXX OR DL7S2546">
                                        </asp:TextBox>
                                    </div>

                                    <legend></legend>

                                    <div class="form-group">
                                        <div class="col-md-6">

                                            <asp:Button ID="Button" runat="server" Text="Delete from database" CssClass="btn btn-danger" Width="200px" OnClick="Button_Click" UseSubmitBehavior="False" />
                                        </div>
                                        <div class="col-md-6">
                                            <asp:Label ID="Label2" runat="server" ForeColor="IndianRed"></asp:Label>
                                        </div>
                                    </div>
                                    <legend>
                                        <br>
                                    </legend>

                                    <br>
                                </fieldset>

                                <legend style="color: forestgreen; font-size=25px;">Update cab location</legend>
                                <br />
                                <fieldset>
                                    <legend>Enter Cab Detais </legend>
                                    <div class="form-group col-md-12">
                                        <label for="first_name">Eiel id or Cab number</label>
                                        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" placeholder="EIL-XXXX OR DL7S2546     ">
                                        </asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <asp:Button ID="Button3" runat="server" Text="Get location" CssClass="btn" Width="200px" OnClick="Button3_Click" />
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="first_name">Starting</label>
                                        <asp:Label ID="Label4" runat="server" Text="" Font-Size="Medium" CssClass="form-control"></asp:Label>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="first_name">Destination</label>
                                        <asp:Label ID="Label5" runat="server" Text="" Font-Size="Medium" CssClass="form-control"></asp:Label>
                                    </div>
                                    <legend></legend>
                                    <legend style="color: gray;">Enter new location </legend>
                                    <div class="col-md-6 ">
                                        <label for="first_name">Starting</label>
                                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                                            <asp:ListItem Value="-1">Your Location</asp:ListItem>
                                            <asp:ListItem Value="Azadpur">Azadpur</asp:ListItem>
                                            <asp:ListItem Value="RajeevChowk">RajeevChowk</asp:ListItem>
                                            <asp:ListItem Value="GreenPark">GreenPark</asp:ListItem>
                                            <asp:ListItem Value="Sikandarpur">Sikandarpur</asp:ListItem>
                                            <asp:ListItem Value="HuddaCityCenter">HuddaCityCenter</asp:ListItem>
                                            <asp:ListItem Value="Vaishali">Vaishali</asp:ListItem>
                                            <asp:ListItem Value="Sector18">Sector18</asp:ListItem>
                                            <asp:ListItem Value="BotnicalGarden">BotnicalGarden</asp:ListItem>
                                            <asp:ListItem Value="NoidaCityCenter">NoidaCityCenter</asp:ListItem>
                                            <asp:ListItem Value="YamunaBank">YamunaBank</asp:ListItem>
                                            <asp:ListItem Value="Airport">Airport</asp:ListItem>
                                            <asp:ListItem Value="Rithala">Rithala</asp:ListItem>
                                            <asp:ListItem Value="Okhla">Okhla</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-md-6 ">
                                        <label for="first_name">Destination</label>
                                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control">
                                            <asp:ListItem Value="-1">Your Location</asp:ListItem>
                                            <asp:ListItem Value="Azadpur">Azadpur</asp:ListItem>
                                            <asp:ListItem Value="RajeevChowk">RajeevChowk</asp:ListItem>
                                            <asp:ListItem Value="GreenPark">GreenPark</asp:ListItem>
                                            <asp:ListItem Value="Sikandarpur">Sikandarpur</asp:ListItem>
                                            <asp:ListItem Value="HuddaCityCenter">HuddaCityCenter</asp:ListItem>
                                            <asp:ListItem Value="Vaishali">Vaishali</asp:ListItem>
                                            <asp:ListItem Value="Sector18">Sector18</asp:ListItem>
                                            <asp:ListItem Value="BotnicalGarden">BotnicalGarden</asp:ListItem>
                                            <asp:ListItem Value="NoidaCityCenter">NoidaCityCenter</asp:ListItem>
                                            <asp:ListItem Value="YamunaBank">YamunaBank</asp:ListItem>
                                            <asp:ListItem Value="Airport">Airport</asp:ListItem>
                                            <asp:ListItem Value="Rithala">Rithala</asp:ListItem>
                                            <asp:ListItem Value="Okhla">Okhla</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <legend></legend>
                                    <div class="form-group">
                                        <div class="col-md-6">
                                            <asp:Button ID="Button4" runat="server" Text="Update location" CssClass="btn btn-success" Width="200px" OnClick="Button4_Click" />
                                        </div>
                                        <div class="col-md-6">
                                            <asp:Label ID="Label3" runat="server" ForeColor="lightgreen"></asp:Label>
                                        </div>
                                    </div>
                                    <legend>
                                        <br>
                                            <br>
                                                <br></br>
                                                <br></br>
                                            </br>
                                        </br>
                                    </legend>
                                </fieldset>

                            </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
                </div>
            <!--/.container -->
                <div style="object-fit: cover; padding-top: 40px;">
                    <footer class="container-fluid text-center foot">

                        <div class="copyrights">

                            <p class="white-txt">
                                Eiel © 2017
               
                                <br>
                                <br>
                                <img class="footimg" src="../Images/logo_footer.png" alt="Logo">
                            </p>

                            <hr class="dark-line">
                            <a class="link" href="https://www.facebook.com/ayushoc">Facebook</a>&nbsp
           
                            <a class="link" href="#">G Mail</a>&nbsp
           
                            <a class="link" href="#">Linkind</a>
                            <br>
                            <br>
                            <p class="white-txt small">
                                Designed and Develoved by Ayush Kumar.
           
                            </p>
                        </div>
                    </footer>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
