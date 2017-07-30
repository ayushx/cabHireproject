<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpCompleated_Driver.aspx.cs" Inherits="CabHireProject.Pages.SignUpCompleated_Driver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Eiel</title>

    <script src="../Scripts/jquery-1.9.1.min.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="../Style/Trasnparent_btn.css" rel="stylesheet" />
    <style>
        body {
             background-image: url('../Images/loginpage.jpg');
        }
        .cntr {
    text-align:center;
        }
        textarea:focus,
            input[type="text"]:focus,
            input[type="password"]:focus,
            .form-control:focus {
                border-color: #5cb85c;
                box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 8px #5cb85c !important;
                outline: 0 none !important;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="col-md-12 text-center"style="font-family:Dosis; color:#5cb85c; letter-spacing:10px; font-weight:bolder;
                 font-size:60px; z-index:1;position:absolute;text-align:center; margin-top:50px; ">
        <asp:Label ID="Label1" runat="server" Text="Welcome" ForeColor="#5cb85c"></asp:Label>
        <asp:Label ID="Label2" runat="server" ForeColor="#5cb85c" ></asp:Label>
        <asp:Label ID="Label3" runat="server" ForeColor="#5cb85c"></asp:Label>
    </div>
       
        <div class="col-md-4 col-md-offset-4 text-center" style=" margin-top:170px;">
            <h2 style="font-family:Dosis; color:lightyellow; letter-spacing:10px; font-weight:bolder; font-size:60px;">Login</h2><br />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Placeholder="UserName or EmailID"></asp:TextBox><br />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Placeholder="Password"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" CssClass="btn btn-success cntr btn-outline" Width="250px" /><br />
            <p><br /><br /><hr /><span style="color:lightyellow;">New to Eiel, Register </span><a href="SignUpPageDriver.aspx">Here</a></p>
        <asp:Label ID="Label4" runat="server" Text="" ForeColor="#ff6666" Font-Size="18px"></asp:Label>
            </div>
    </form>
</body>
</html>
