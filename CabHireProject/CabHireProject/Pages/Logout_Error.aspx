<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout_Error.aspx.cs" Inherits="CabHireProject.Pages.Logout_Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Eiel</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-1.9.1.min.js"></script>
    <link href="../Style/DashbordUser.css" rel="stylesheet" />
    <style>
        body {
            background-color: aliceblue;
        }
.error-template {padding: 40px 15px;text-align: center;}
.error-actions {margin-top:15px;margin-bottom:15px;}
.error-actions .btn { margin-right:10px; }
    </style>
</head>

<body>
    <form id="form1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="error-template">
                <h1>
                    Oops!</h1>
                <h2> an error has occured
                    </h2>
                <div class="error-details">
                    
                    Sorry, You have no acess to this page !
                </div>
                <div class="error-actions">
                    <a href="Index.aspx" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-home"></span>
                        Take Me Home </a>
                </div>
            </div>
        </div>
    </div>
</div>

    </form>
</body>
</html>
