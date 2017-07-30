<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashbordDriver.aspx.cs" Inherits="CabHireProject.Pages.DashbordDriver" %>

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
    <style>
        .cntr {
            text-align: center;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="scr" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="panel1" runat="server">
            <ContentTemplate>
                <!--/.to get query string-->
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
                                <li class="active_user"><a href="DashbordDriver.aspx">Home</a></li>
                                <li><a href="DashbordDriverMyCabTrips.aspx">My Trips</a></li>
                                <li><a href="DashbordDriverCancelTrip.aspx">Cancel Cab</a></li>
                                <li><a href="#">Logout</a></li>
                            </ul>
                        </div>
                        <!--/.nav-collapse -->
                    </div>
                </div>

                <div class="container-fluid big-logo-row" style="background-image: url('../Images/header image.jpg');">
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
                        <div class="col-lg-12 col-md-6 col-sm-8">
                            <br />
                            <br />
                            <br />

                            <div style="padding: 80px;" class="text-center">
                                <h1 style="font-size: 80px;">Register your travling route</h1>
                            </div>

                            <legend class="text-center">Register yourself on the rout and help someone and earn money. </legend>
                            <br />
                            <hr />
                            <br />
                        </div>
                    </div>
                </div>


                <div class="container">
                    <div class="row">

                        <div class="col-md-8 col-md-offset-2">


                            <fieldset>
                                <legend>Enter Cab Detais</legend>

                                <%-- <div class="form-group col-md-6">
                            <label for="first_name">Driver Name</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Username">
                            </asp:TextBox>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="first_name">Cab Number</label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Username">
                            </asp:TextBox>
                        </div>--%>
                                <div class="form-group col-md-6">
                                    <label for="country">Source</label>
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="-1">Source</asp:ListItem>
                                        <asp:ListItem Value="Sector15">Sector15</asp:ListItem>
                                        <asp:ListItem Value="Sector16">Sector16</asp:ListItem>
                                        <asp:ListItem Value="Sector18">Sector18</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="country">Destinaton</label>
                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="-1">Destinaton</asp:ListItem>
                                        <asp:ListItem Value="Sector15">Sector15</asp:ListItem>
                                        <asp:ListItem Value="Sector16">Sector16</asp:ListItem>
                                        <asp:ListItem Value="Sector18">Sector18</asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <%-- <div>
                            <div class="form-group col-md-6">
                                <label for="cabs">Type of Cab</label>
                                <asp:RadioButton ID="RadioButton2" runat="server" CssClass="form-control" Text="EielX" RepeatDirection="Vertical" GroupName="cartype" />
                            </div>
                            <div class="form-group col-md-5">
                                <label class="label_item" for="radio1" style="padding-top: 25px;">
                                    <img src="../Uber-web-ajjpp.png" />
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
                                    <img src="../Uber-web-ajjpp.png" />
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
                                    <img src="../Uber-web-ajjpp.png" />
                                </label>
                            </div>
                        </div>
                      <div class="form-group col-md-6">
                            <label for="first_name">Email ID</label>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Username">
                            </asp:TextBox>
                        </div> --%>
                                <div class="form-group col-md-12">
                                    <label for="first_name">Contact Number</label>
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Current PhoneNo.">
                                    </asp:TextBox>
                                </div>

                                <legend></legend>


                                <div class="col-md-4 col-md-offset-4">
                                    <br />
                                    <br />
                                    <br />
                                    <asp:Button ID="Button1" runat="server" Text="ADD YOUR VEHICLE" CssClass="btn btn-primary center-block cntr" Width="220px" OnClick="Button1_Click1" />
                                    <br />

                                    <hr />

                                </div>
                                <div class="col-md-12 text-center">
                                    <br />
                                    <br />
                                    <asp:Label ID="Label1" CssClass="label" ForeColor="#660066" Font-Size="X-Large" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                    <hr />
                                    <br />
                                    <br />
                                </div>

                                <br />
                                <br />

                            </fieldset>


                        </div>
                    </div>
                </div>


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
