<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashbordAdminViewDB.aspx.cs" Inherits="CabHireProject.Pages.DashbordAdminViewDB" %>

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
                                <li><a href="DashbordAdmin.aspx">Home</a></li>
                                <li><a href="DashbordAdminManageCabs.aspx">Manage Cabs</a></li>
                                <li class="active_user"><a href="#">Total DB</a></li>
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
                            <div class="row">
                            </div>
                            <!--/.row -->
                        </div>
                        <!--/.container -->
                        <%-- from starts --%>
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2">
                                <br />
                                <br />
                                <hr />
                                <legend style="color: blue; font-size=25px;">Totsl cabs in database<br>
                                </legend>

                                <fieldset>

                                    <asp:Button ID="Button1" runat="server" Text="GET CABS DETAIL" CssClass="btn btn-primary" Width="200px" OnClick="Button1_Click" />

                                    <legend></legend>
                                    <br />
                                    <hr />
                                    <br />
                                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" CssClass="table table-striped table-bordered table-condensed">
                                        <%--<AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />--%>
                                    </asp:GridView>
                                    <br />
                                    <hr />
                                </fieldset>
                                <br />
                                <br />
                                <hr />
                                <legend style="color: blue; font-size=25px;">logs from database<br>
                                </legend>

                                <fieldset>

                                    <asp:Button ID="Button2" runat="server" Text="GET LOGS" CssClass="btn btn-primary" Width="200px" OnClick="Button2_Click" />

                                    <legend></legend>
                                    <br />
                                    <hr />
                                    <br />
                                    <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" CssClass="table table-striped table-bordered table-condensed">
                                        <%--<AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />--%>
                                    </asp:GridView>
                                    <br />
                                    <hr />
                                </fieldset>
                                <br />
                                <br />
                                <hr />
                                <legend style="color: blue; font-size=25px;">Customer Registrsations<br>
                                </legend>

                                <fieldset>

                                    <asp:Button ID="Button3" runat="server" Text="CUSTOMER REGISTRATIONS" CssClass="btn btn-primary" Width="200px" OnClick="Button3_Click" />

                                    <legend></legend>
                                    <br />
                                    <hr />
                                    <br />
                                    <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" CssClass="table table-striped table-bordered table-condensed">
                                        <%--<AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />--%>
                                    </asp:GridView>
                                    <br />
                                    <hr />
                                </fieldset>
                                <br />
                                <br />
                                <hr />
                                
                                <legend style="color: blue; font-size=25px;">Driver Registrations<br>
                                </legend>

                                <fieldset>

                                    <asp:Button ID="Button6" runat="server" Text="DRIVER REGISTRATIONS" CssClass="btn btn-primary" Width="200px" OnClick="Button6_Click" />

                                    <legend></legend>
                                    <br />
                                    <hr />
                                    <br />
                                    <asp:GridView ID="GridView6" runat="server" CellPadding="4" ForeColor="#333333" CssClass="table table-striped table-bordered table-condensed">
                                    </asp:GridView>
                                    <br />
                                    <hr />
                                </fieldset>
                                <br />
                                <br />
                                <hr />
                                
                                <legend style="color: blue; font-size=25px;">CUSTOMER CURRENT DETAILS<br>
                                </legend>

                                <fieldset>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Entre customer USER NAME"></asp:TextBox><br>
                                    <asp:Button ID="Button4" runat="server" Text="CUSTOMER CURRENT DETAILS" CssClass="btn btn-primary" Width="200px" OnClick="Button4_Click" />
                                    <asp:Label ID="Label1" runat="server" Text="" ForeColor="#ff6600" Font-Size="Larger" CssClass="label"></asp:Label>
                                    <legend></legend>
                                    <br />
                                    <hr />
                                    <br />

                                    <asp:GridView ID="GridView4" runat="server" CellPadding="4" ForeColor="#333333" CssClass="table table-striped table-bordered table-condensed">
                                    </asp:GridView>

                                    <br />
                                    <hr />
                                </fieldset>
                                <br />
                                <br />
                                <hr />

                                <legend style="color: blue; font-size=25px;">CUSTOMER TRIPS DETAILS<br>
                                </legend>

                                <fieldset>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Entre customer USER NAME"></asp:TextBox><br>
                                    <asp:Button ID="Button7" runat="server" Text="CUSTOMER TRIPS DETAILS" CssClass="btn btn-primary" Width="200px" OnClick="Button7_Click" />
                                    <asp:Label ID="Label3" runat="server" Text="" ForeColor="#ff6600" Font-Size="Larger" CssClass="label"></asp:Label>
                                    <legend></legend>
                                    <br />
                                    <hr />
                                    <br />

                                    <asp:GridView ID="GridView7" runat="server" CellPadding="4" ForeColor="#333333" CssClass="table table-striped table-bordered table-condensed">
                                    </asp:GridView>

                                    <br />
                                    <hr />
                                </fieldset>
                                <br />
                                <br />
                                <hr />
                                <legend style="color: blue; font-size=25px;">OUTSIDE DRIVER DETAILS<br>
                                </legend>

                                <fieldset>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Entre Driver's car No."></asp:TextBox><br />
                                    <asp:Button ID="Button5" runat="server" Text="DRIVER DETAILS" CssClass="btn btn-primary" Width="200px" OnClick="Button5_Click" />
                                    <asp:Label ID="Label2" runat="server" Text="" ForeColor="#ff6600" Font-Size="Larger" CssClass="label"></asp:Label>
                                    <legend></legend>
                                    <br />
                                    <hr />
                                    <br />

                                    <asp:GridView ID="GridView5" runat="server" CellPadding="4" ForeColor="#333333" CssClass="table table-striped table-bordered table-condensed">
                                        <%--<AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />--%>
                                    </asp:GridView>

                                    <br />
                                    <hr />
                                </fieldset>
                            </div>
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
