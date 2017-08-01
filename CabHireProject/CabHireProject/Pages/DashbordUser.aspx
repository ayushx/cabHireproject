<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashbordUser.aspx.cs" Inherits="CabHireProject.Pages.DashbordUser" %>

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

    <script lang="javascript" type="text/javascript">
        function myselection(rbtnid) {
            var rbtn = document.getElementById(rbtnid);
            var rbtnlist = document.getElementsByTagName("input");
            for (i = 0; i < rbtnlist.length; i++) {
                if (rbtnlist[i].text == "radio" && rbtnlist[i].id != rbtn.id) {
                    rbtnlist[i].checked = false;

                }
            }
        }
    </script>
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
                <asp:Label ID="Label4" runat="server"></asp:Label>
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
                                <li class="active_user"><a href="DashbordUser.aspx">Home</a></li>
                                <li><a href="DashbordUserCabMyTrips.aspx">My Trips</a></li>
                                <li><a href="DashbordUserCabCancel.aspx">Cancel Cab</a></li>
                                <li><a href="LogOut.aspx">Logout</a></li>
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
                        <!--/.col-xs-12 -->
                    </div>
                    <!--/.row -->
                    <br>
                    <br>
                    <hr />
                    <br />
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <legend>Select your location</legend>
                            <br />
                            <div class="col-md-6">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
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
                            <div class="col-md-6">
                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
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
                            <br />
                            <div class="col-md-12 text-center">
                                <br />
                                <br />
                                <asp:Button ID="Button1" runat="server" Text="Check Cab" CssClass="btn btn-primary cntr" Width="220px" OnClick="Button1_Click" />
                                <br />
                                <br />
                                <hr />
                            </div>

                            <!--/ the div to hide after compleat booking -->
                            <asp:Panel ID="toHideAfteCompleatBooking" runat="server">
                                <div class="col-md-12">

                                    <asp:Label ID="Label3" CssClass="label" ForeColor="#660066" Font-Size="X-Large" runat="server"></asp:Label>
                                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="table table-striped table-bordered table-condensed" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <input name="RadioButton1" type="radio" value='<%# Eval("CabNum") %>' onclick="javascript.myselection(this.id)" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                    <br />
                                    <br />
                                    <hr />
                                </div>
                                <div runat="server" id="divtohidde">
                                    <!--/ the div to hide -->
                                    <div class="col-md-12 text-center ">
                                        <br />
                                        <br />
                                        <asp:Label ID="Label1" CssClass="label" ForeColor="#660066" Font-Size="X-Large" runat="server"></asp:Label>
                                        <br />
                                        <br />
                                    </div>
                                    <br>
                                    <hr>
                                    <div class="col-md-12">

                                        <br />
                                        <br />
                                        <hr />
                                    </div>
                                    <div class="col-md-12 text-center">
                                        <asp:Button ID="Button3" runat="server" Text="Book Cab" CssClass="btn btn-primary cntr " Width="220px" OnClick="Button3_Click" />
                                        <br />
                                        <br />
                                        <hr />
                                    </div>

                                </div>
                                <!--/ the div to hide -->
                            </asp:Panel>

                            <div class="col-md-12">
                                <asp:Label ID="Label2" CssClass="label" ForeColor="#660066" Font-Size="X-Large" runat="server"></asp:Label>
                                <br />
                                <br />
                                <hr />
                            </div>

                        </div>
                        <!--/.col-xs-12 -->
                    </div>
                    <!--/.row -->
                    <!--end of nav bar -->
                    <div class="row">
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

                <!--/.container -->
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
