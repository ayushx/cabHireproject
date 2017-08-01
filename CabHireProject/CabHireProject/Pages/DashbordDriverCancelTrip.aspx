<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashbordDriverCancelTrip.aspx.cs" Inherits="CabHireProject.Pages.DashbordDriverCancelTrip" %>

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
                                <li><a href="DashbordDriver.aspx">Home</a></li>
                                <li><a href="DashbordDriverMyCabTrips.aspx">My Trips</a></li>
                                <li class="active_user"><a href="DashbordDriverCancelTrip.aspx">Cancel Cab</a></li>
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

                            <div style="padding: 80px;" class="text-center">
                                <h1 style="font-size: 80px;">Cancel your trip</h1>
                            </div>

                            <legend class="text-center">Cancel your trip from us and move freely </legend>
                            <br />
                            <hr />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="table table-striped table-bordered table-condensed" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
                            </asp:GridView>
                            <br />
                        </div>
                    </div>
                </div>


                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <fieldset>
                                <div class="form-group col-md-10 col-md-offset-1">
                                    <div class="form-group col-md-12 text-center">
                                        <asp:Button ID="Button1" runat="server" Text="REMOVE YOUR CAB" CssClass="btn btn-primary center-block cntr" Width="220px" OnClick="Button1_Click" />
                                        <br />
                                    </div>
                                    <br />
                                    <br />
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
                                </div>
                                <hr />
                                <div class="col-md-4 col-md-offset-4">
                                    <br />
                                    <br />
                                    <br />
                                    <hr />
                                </div>

                            </fieldset>
                        </div>
                    </div>
                </div>
                <div style="object-fit: cover; padding-top: 40px;">
                    <footer class="container-fluid text-center foot">

                        <div class="copyrights">

                            <p class="white-txt">
                                Eiel © 2017
               
                                <br />
                                <br />
                                <img class="footimg" src="../Images/logo_footer.png" alt="Logo" />
                            </p>

                            <hr class="dark-line" />
                            <a class="link" href="https://www.facebook.com/ayushoc">Facebook</a>&nbsp
           
                            <a class="link" href="#">G Mail</a>&nbsp
           
                            <a class="link" href="#">Linkind</a>
                            <br />
                            <br />
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
