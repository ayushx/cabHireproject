<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CabHireProject.Pages.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" type="image/ico" href="/favicon.ico" />
    <link rel="icon" type="image/ico" href="/favicon.ico" />
    <link rel="apple-touch-icon" type="image/ico" href="/favicon.ico" />
    <title>Eiel</title>
    

    <script src="../Scripts/jquery-1.9.1.min.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="../Style/IndexPage_Slider.css" rel="stylesheet" />
    <link href="../Style/Trasnparent_btn.css" rel="stylesheet" />
    <script>
        $(window).scroll(function () {

            if ($(this).scrollTop() > 3200) {
                $('#buttn').fadeIn();
            }
            else {
                $('#buttn').fadeOut();
            }
        });
    </script>
    <style>
#bdy{
    background-color:#f8f8f9;
}
 
.cntr {
    text-align:center;
}


    </style>
    <style>
        #par1 {
            background-attachment: fixed;
        }

        #par2 {
            background-color: #f8f8f9;
            padding: 10px;
            background-attachment: fixed;
        }

        #par3 {
            padding-top: 300px;
            background-image: url('../Images/indexbkgrd.jpg');
            background-attachment: fixed;
            height: 1000px;
        }
        #footer {
            background-color: #f8f8f9;
            height:800px;
            background-attachment: fixed;
            background-image: url('../Images/footer.jpg');
            background-size:cover;
            background-repeat:no-repeat;
           
        }
        
    </style>
</head>
<body id="bdy">


    <form id="form1" runat="server">
        <div id="par1">
            <div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4500" id="bs-carousel">
                <!-- Overlay -->
                <%--            <div class="overlay"></div>--%>

                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#bs-carousel" data-slide-to="1"></li>
                    <li data-target="#bs-carousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item slides active">
                        <div class="slide-1"></div>
                        <div class="hero">
                            <hgroup>
                                <h3>Welcome to</h3>
                                <h1 style="font-size: 150px; font-family: Arapey; letter-spacing:40px;">Eiel<span style="color:gold;">.</span> </h1>
                                <h2 style="font-weight: bold;">Get there</h2>
                                <h2>Your day belongs to you</h2>
                            </hgroup>
                           
                        </div>

                    </div>
                    <div class="item slides">
                        <div class="slide-2"></div>
                        <div class="hero">
                            <hgroup>
                                <h3>Start your new journy</h3>
                                <h1>Register as User</h1>
                                <br />
                            </hgroup>
                            <asp:Button ID="login" runat="server" OnClick="login_Click" Text="login" Width="200px" CssClass="btn btn-warning btn-outline cntr " />
                            <asp:Button ID="signup" runat="server" OnClick="signup_Click" Text="signup" Width="200px" CssClass="btn btn-info btn-outline cntr" />
                        </div>
                    </div>
                    <div class="item slides">
                        <div class="slide-3"></div>
                        <div class="hero">
                            <hgroup>
                                <h3>Help and Earn</h3>
                                <h1>Be an Eiel Driver</h1>
                                <br />
                            </hgroup>
                            <asp:Button ID="logiDriver" runat="server" Text="login Driver" OnClick="LoginDriver_Click" Width="200px" CssClass="btn btn-success btn-outline cntr " />
                            <asp:Button ID="SignupDriver" runat="server" Text="Signup Driver" OnClick="SignupDriver_Click" Width="200px" CssClass="btn btn-info btn-outline cntr" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12 text-center" id="par2" style="align-items: center;">
            <br />
            <hr />
            <br />
            <h2 style="color: slategray; font-weight:bolder; font-family: Dosis; font-size:50px; letter-spacing:10px;">Everyday dependable ride</h2>
            <br />
            <hr />
            <br />
        </div>
        <div id="par3" style="padding-top: 10px; /*background-color: rgba(000,200,000,0.5)*/ width: 100%; height: 600px;">
            <div class="container">
                <div class="col-md-10 col-md-offset-1" style="padding-top: 300px;">
                    <div class="col-md-4" style="background-color: rgba(0,0,0,.5)">
                        <div class="text-center">
                            <img src="../Images/1info.jpg" />
                        </div>
                        <h2 style="font-family:Dosis; font-weight: bolder; color: white;">Easiest way around</h2>
                        <br />
                        <br />
                        <br />
                        <p style="font-family: Dosis; font-size: 20px; color: white;">One tap and a car comes directly to you. Hop in—your driver knows exactly where to go. And when you get there, just step out. Payment is completely seamless.</p>
                    </div>
                    <div class="col-md-4" style="background-color: rgba(0,0,0,0.35);">
                        <div class="text-center">
                            <img src="../Images/2info.jpg" />
                        </div>
                        <h2 style="font-family: Dosis; font-weight: bolder; color: white;">Anytime availablity</h2>
                        <br />
                        <br />
                        <br />
                        <p style="font-family: Dosis; font-size: 20px; color: white;">Daily commute. Errand across town. Early morning flight. Late night drinks. Wherever you’re headed, count on Uber for a ride—no reservations required</p>
                    </div>
                    <div class="col-md-4" style="background-color: rgba(0,0,0,0.3);">
                        <div class="text-center">
                            <img src="../Images/3info.jpg" />
                        </div>
                        <h2 style="font-family: Dosis; font-weight: bolder; color: white;">Low-cost to luxury</h2>
                        <br />
                        <br />
                        <br />
                        <p style="font-family: Dosis; font-size: 20px; color: white;">Economy cars at everyday prices are always available. For special occasions, no occasion at all, or when you just a need a bit more room, call a black car or SUV.</p>
                    </div>
                    <div class="col-md-12 text-center" style="align-items: center;">
                        <br />
                        <hr />
                        <br />
                        <h2 style="color: slategray;  font-weight:bolder; font-family: Dosis; font-size:50px; letter-spacing:10px;">An easy way to book cab in your regon</h2>
                        <br />
                        <hr />
                        <br />
                    </div>

                    <p class="text-left" style="font-size: 18px;">
                        Eiel Car Rentals is an online cab booking aggregator that aims to provide reliable, affordable and safe taxi services to its travellers.
                         With operations across Delhi and Delhi NCR, Eiel is uniquely placed as the largest car rental company in India in terms of geographical reach.
                         Eiel provides inter taxi booking services as well as local cab services. 
                    </p>
                    <p class="text-left" style="font-size: 18px;">
                        Eiel has been in the car rental industry for more than a decade now and has continuously delivered best in class services across outstation and local trips.
                         Improving on the quality of services year on year is what makes Eiel a household name in the car rental industry. Eiel also provides customers an option of 
                        booking package services for certain available routes. 
                    </p>
                    <p class="text-left" style="font-size: 18px;">
                        Outstation car rental services being its prime category, Eiel has also introduced One way cab services for specific customer preferences and needs.
                         You can avoid booking the cab for two way journeys if you have not planned for the return trip. On the whole, we believe that Eiel is the perfect option for the customers
                         looking for reliable car rental services.
                    </p>
                    <div class="col-md-12 " style="align-items: center;">
                        <br />
                        <hr />
                        <br />
                        <p style="color: slategray; font-family: Dosis; font-size:40px; letter-spacing:5px; ">At the wheel</p>
                        <br />
                        <p style="color: slategray; font-weight:bolder; font-family: Dosis; font-size:30px;">Meet our drivers</p>
                        <br />
                        <hr />
                        <br />
                    </div>
                    <div id="textslider">
                    <div class="container-fluid">
                        <div id="custom_carousel" class="carousel slide" data-ride="carousel" data-interval="2500">
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-md-3">
                                               <img src="../Images/index_Driver1.png" class="img-responsive"></div>
                                            <div class="col-md-9">
                                                <h2>Ayush, Coach and Delhi partner</h2>
                                                <p>"I started driving with Eiel because I liked the idea that my own car could make me money. After just about a couple weeks, I saw that this was something I wanted to do permanently."</p>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <img src="../Images/index_Driver2.png" class="img-responsive" style="border-radius:5000px"></div>
                                            <div class="col-md-9">
                                                <h2>Shalguni, Mother and Faridabad partner</h2>
                                               <p> "I wanted something where I could meet new people and get out of the house. Eiel has helped with both of those things, plus I’m seeing new parts of the city I’ve never seen before!"</p>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <img src="../Images/index_Driver3.png" class="img-responsive" style="border-radius:50px"></div>
                                            <div class="col-md-9">
                                                <h2>Sachin, Business owner and Gurugram partner</h2>
                                                <p>"Eiel enables me to have the creative freedom for creating my codes and also driving on the side so I can make more money and also have my dream job."
                                                       </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <img src="../Images/index_Driver4.png" class="img-responsive" style="border-radius:50px"></div>
                                            <div class="col-md-9">
                                                <h2>Kunal, Model and Noida</h2>
                                               <p> "With Eiel, I’m able to realize my goals. I’m able to pursue my dreams. I’m able to stay focused on sharing amazing musical experiences with the world."</p>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Item -->
                            </div>
                            <!-- End Carousel Inner -->
                            <div class="controls">
                                <%--<ul class="nav">
                                    <li data-target="#custom_carousel" data-slide-to="0" class="active"><a href="#">
                                        <img src="http://placehold.it/50x50"><small>Slide One</small></a></li>
                                    <li data-target="#custom_carousel" data-slide-to="1"><a href="#">
                                        <img src="http://placehold.it/50x50"><small>Slide Two</small></a></li>
                                    <li data-target="#custom_carousel" data-slide-to="2"><a href="#">
                                        <img src="http://placehold.it/50x50"><small>Slide Three</small></a></li>
                                    <li data-target="#custom_carousel" data-slide-to="3"><a href="#">
                                        <img src="http://placehold.it/50x50"><small>Slide Four</small></a></li>
                                </ul>--%>
                            </div>
                        </div>
                        <!-- End Carousel -->
                    </div>
                         </div>
                    <br />
                    <hr /> 
                    <div style="background-color:#f7dfa6; height:320px; color:white;" class="col-md-4 text-center">
                        
                        <h2>RELIABILITY</h2>
                        <br />
                        <img src="../Images/relib.png" />
                        <br /><br /><br /><br /><br />
                        <ul class="text-left" style="font-size:18px;">
                            <li>
                                24 X 7 customer service.
                            </li>
                            <li>
                                Well Trained, Drivers
                            </li>
                            <li>
                                GPS Tracker on cars
                            </li>
                        </ul>

                    </div>
                    <div style="background-color:#b6d2cd; height:320px; color:white; " class="col-md-4 text-center">
                        <h2>RESPONSIBILITY</h2>
                          <br />
                        <img src="../Images/secur.png" />
                        <br /><br /><br /><br /><br />
                        <ul class="text-left" style="font-size:18px;">
                            <li>
                                Transparent Pricing
                            </li>
                            <li>
                               Always On Time
                            </li>
                            <li>
                                Value for Money
                            </li>
                        </ul>
                    </div>
                    <div style="background-color:#e0b3d4;  height:320px; color:white;" class="col-md-4 text-center">
                        <h2>CONVENIENCE</h2>
                          <br />
                        <img src="../Images/alltime.png" />
                        <br /><br /><br /><br /><br />
                        <ul class="text-left"  style="font-size:18px;">
                            <li>
                                Book through Website
                            </li>
                            <li>
                               E-Cash Accepted
                            </li>
                            <li>
                                Clean and Comfortable Cars
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-12" style="padding:10px;"></div>
                </div>
            </div>
        <div id="footer">
            <div class="col-md-6">
            </div>
            <div class="col-md-6">
                
                <div class="col-md-8 col-md-offset-2" id="buttn" style="padding-top:500px;">
                   <div class="col-md-6">
                       <asp:Button ID="Button1" runat="server" OnClick="login_Click" Text="LOGIN USER" Width="200px" CssClass="btn btn-warning btn-outline cntr" />
                   </div>
                    <div class="col-md-6">
                        <asp:Button ID="Button2" runat="server" OnClick="LoginDriver_Click" Text="LOGIN DRIVER" Width="200px" CssClass="btn btn-info btn-outline cntr" />
                   </div>
                </div>
            </div>
                            
        </div>
            </div>
    </form>
</body>
</html>
