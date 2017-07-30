<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashbordAdmin.aspx.cs" Inherits="CabHireProject.Pages.DashbordAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Eiel</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-1.9.1.min.js"></script>
    <link href="../Style/DashbordUser.css" rel="stylesheet" />
    <script src="../AdditionalScript/DashbordUser.js"></script>
    <link href="../Style/footer.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="scr" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="panel1" runat="server">
            <ContentTemplate>
                <!-- Fixed navbar -->
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
                                <li class="active_user"><a href="#">Home</a></li>
                                <li><a href="DashbordAdminManageCabs.aspx">Manage Cabs</a></li>
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
                        </div>
                        <!--/.col-xs-12 -->
                    </div>

                    <%--<div class="row">
                <div class="col-lg-6 col-md-6 col-sm-8" style="text-align: center;">
                    <asp:Button ID="Button1" runat="server" Text="generate todays income" />
                    <\br>
                <asp:Label ID="Label1" runat="server"></asp:Label>
                    <!-- displays total cash by today from database -->
                </div>
            </div>--%>
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
