<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AADesignRegister.aspx.cs" Inherits="CabHireProject.Pages.AADesignRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Eiel</title>
    <script src="../Scripts/jquery-1.9.1.min.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="../Style/RegistrationPage_Slider.css" rel="stylesheet" />
</head>
<body>
    <div class="col-md-6">
        <div class="carousel fade-carousel slide" data-ride="carousel" data-interval="3000" id="bs-carousel">
  <!-- Overlay -->
  <div class="overlay"></div>

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
            <h1>We are creative</h1>        
            <h3>Get start your next awesome project</h3>
        </hgroup>
        <button class="btn btn-hero btn-lg" role="button">See all features</button>
      </div>
    </div>
    <div class="item slides">
      <div class="slide-2"></div>
      <div class="hero">        
        <hgroup>
            <h1>We are smart</h1>        
            <h3>Get start your next awesome project</h3>
        </hgroup>       
        <button class="btn btn-hero btn-lg" role="button">See all features</button>
      </div>
    </div>
    <div class="item slides">
      <div class="slide-3"></div>
      <div class="hero">        
        <hgroup>
            <h1>We are amazing</h1>        
            <h3>Get start your next awesome project</h3>
        </hgroup>
        <button class="btn btn-hero btn-lg" role="button">See all features</button>
      </div>
    </div>
  </div> 
</div>
    </div>

    <div class="col-md-6">
        <form id="form1" runat="server">
        <div class="input-group">
                            <span class="input-group-addon">@</span>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Username">
                            </asp:TextBox>
                        </div>
            </form>
        //webformdata
    </div>









    
    
    
    
</body>
</html>
