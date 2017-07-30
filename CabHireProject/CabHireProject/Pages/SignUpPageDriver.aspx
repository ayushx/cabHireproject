<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPageDriver.aspx.cs" Inherits="CabHireProject.Pages.SignUpPageDriver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Eiel</title>
    <style>
        /** {
  margin: 0 !important;
  padding: 0 !important;
}*/

        #cont1 {
            padding: 0 !important;
            /*background: url('../Images/registrationPageImage.jpg') !important;
            background-image: url('../Images/registrationPageImage.jpg') !important;*/
        }

        body {
            background-image: url('../Images/bodypage2.jpg');
            background-color: aqua;
            position: absolute;
        }
        

        input[type="text"] {
            color: aliceblue !important;
        }

            textarea:focus,
            input[type="text"]:focus,
            input[type="password"]:focus,
            .form-control:focus {
                border-color: rgba(255, 223, 0, 0.8);
                box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 8px rgba(255, 223, 0, 0.6) !important;
                outline: 0 none !important;
            }

        #overlap {
            z-index: 5;
            text-align: center;
            position: absolute;
            margin-top: 300px;
            margin-left: 100px;
            color: #FFDB58;
            font-family: 'Bodoni MT';
            font-size: 100px;
        }
        #error {
            z-index: 5;
            border:none;
            background-color: rgba(0, 0, 0,0.7);
            width:350px;
            position: absolute;
            margin-top: 450px;
            margin-left: 200px;
            color:#FFFFFF;
            font-size: 18px;

        }
    </style>
    <script src="../Scripts/jquery-1.9.1.min.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="../Style/Trasnparent_btn.css" rel="stylesheet" />
    <%--  <link href="../Style/RegistrationPage_Slider.css" rel="stylesheet" />--%>
    <style>
        /*for registration form*/

        form * {
        }

        form > fieldset > legend {
            font-size: 120%;
        }

        #formdiv {
            padding-top: 150px;
        }
        .cntr {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="chech">
            <div class="col-md-6 col-sm-12" id="cont1">
                <h1 id="overlap" class="h1">REGISTER</h1>
                <div id="error">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </div>
            </div>
            </div>

            <div class="col-md-6 col-sm-12" id="formdiv">
                <div class="col-md-10 col-md-offset-1">
                    <div class="col-md-6 center-block">

                        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="lightyellow">First Name</asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control navbar-inverse " placeholder="First Name">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                            runat="server" ErrorMessage="first name required" ControlToValidate="TextBox1" ForeColor="red">*</asp:RequiredFieldValidator>
                    </div>

                    <div class="col-md-6 center-block">
                        <asp:Label ID="Label2" runat="server" Text="Lable" ForeColor="lightyellow">Last Name</asp:Label>

                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control navbar-inverse" placeholder="Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                            runat="server" ErrorMessage="last name required" ControlToValidate="TextBox2" ForeColor="red">*</asp:RequiredFieldValidator>
                    </div>

                    <div class="col-md-6 center-block">

                        <asp:Label ID="Label9" runat="server" Text="User Name" ForeColor="lightyellow"></asp:Label>

                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control navbar-inverse" placeholder="User Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10"
                            runat="server" ErrorMessage="User Id required" ControlToValidate="TextBox7" ForeColor="red">*</asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-6 center-block">

                        <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="lightyellow">Email Id</asp:Label>

                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control navbar-inverse" placeholder="Email Id"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                            runat="server" ErrorMessage="email required" ControlToValidate="TextBox3" ForeColor="red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ForeColor="Red"
                            ErrorMessage="Incorrect Email" ValidateRequestMode="Enabled" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </div>

                    <div class="col-md-6 center-block">
                        <asp:Label ID="Label6" runat="server" Text="Password" ForeColor="lightyellow"></asp:Label>

                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control navbar-inverse" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9"
                            runat="server" ErrorMessage="Password required" ControlToValidate="TextBox4" ForeColor="red">*</asp:RequiredFieldValidator>
                    </div>

                    <div class="col-md-6 center-block">
                        <asp:Label ID="Label7" runat="server" Text="Reapeat Password" ForeColor="lightyellow"></asp:Label>

                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control navbar-inverse" placeholder="Repeat Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not matched" ForeColor="Red"
                            ControlToValidate="TextBox5" ControlToCompare="TextBox4" Type="String">*</asp:CompareValidator>
                    </div>

                    <div class="col-md-6 center-block ">
                        <asp:Label ID="Label5" runat="server" Text="Label" ForeColor="lightyellow">Gender</asp:Label>
                        <br />
                        <div class="btn-group" data-toggle="buttons">
                            <label class="btn btn-default navbar-inverse">
                                <asp:RadioButton runat="server" ID="RadioButton1" GroupName="gender" Text="Male" Height="12px" ForeColor="lightyellow" />
                            </label>
                            <label class="btn btn-default navbar-inverse">
                                <asp:RadioButton runat="server" ID="RadioButton2" GroupName="gender" Text="Female" Height="12px" ForeColor="lightyellow" />
                            </label>
                          
                        </div>
                        </div>

                    <div class="col-md-6">
                        <div>
                            <div style="padding-bottom: 3px;">
                                <asp:Label ID="Label4" runat="server" Text="Label" ForeColor="lightyellow">Date Of Birth</asp:Label>
                            </div>


                            <div class="col-md-4">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control navbar-inverse">
                                    <asp:ListItem Value="-1">Date</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                </asp:DropDownList>


                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" InitialValue="-1"
                                    runat="server" ErrorMessage="Day is required" ControlToValidate="DropDownList1" ForeColor="red">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-4">
                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control navbar-inverse">
                                    <asp:ListItem Value="-1">Month</asp:ListItem>
                                    <asp:ListItem Value="January">January</asp:ListItem>
                                    <asp:ListItem Value="February">February</asp:ListItem>
                                    <asp:ListItem Value="March">March</asp:ListItem>
                                    <asp:ListItem Value="April">April</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" InitialValue="-1"
                                    runat="server" ErrorMessage="Month is required" ControlToValidate="DropDownList2" ForeColor="red">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-4">
                                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control navbar-inverse">
                                    <asp:ListItem Value="-1">Year</asp:ListItem>
                                    <asp:ListItem Value="1994">1994</asp:ListItem>
                                    <asp:ListItem Value="1995">1995</asp:ListItem>
                                    <asp:ListItem Value="1996">1996</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" InitialValue="-1"
                                    runat="server" ErrorMessage="Year is required" ControlToValidate="DropDownList3" ForeColor="red">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12">

                        <asp:Label ID="Label8" runat="server" Text="Phone Number" ForeColor="lightyellow"></asp:Label>

                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control navbar-inverse" placeholder="Phone Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8"
                            runat="server" ErrorMessage="Phone number required" ControlToValidate="TextBox6" ForeColor="red">*</asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-6">
                        <asp:Label ID="Label10" runat="server" Text="Label" ForeColor="lightyellow">Type ofcar</asp:Label>
                        <br />
                        <div class="btn-group" data-toggle="buttons">
                            <label class="btn btn-default navbar-inverse">
                                <asp:RadioButton runat="server" ID="RadioButton3" GroupName="typeofcar" Text="EielL" Height="12px" ForeColor="lightyellow" />
                            </label>
                            <label class="btn btn-default navbar-inverse">
                                <asp:RadioButton runat="server" ID="RadioButton4" GroupName="typeofcar" Text="EielXL" Height="12px" ForeColor="lightyellow" />
                            </label>
                            <label class="btn btn-default navbar-inverse">
                                <asp:RadioButton runat="server" ID="RadioButton5" GroupName="typeofcar" Text="EielPOOL" Height="12px" ForeColor="lightyellow" />
                            </label>
                        </div>
                        </div>
                    <div class="col-md-6">

                        <asp:Label ID="Label11" runat="server" Text="Car Number" ForeColor="lightyellow"></asp:Label>

                        <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control navbar-inverse" placeholder="Car Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11"
                            runat="server" ErrorMessage="Car number required" ControlToValidate="TextBox9" ForeColor="red">*</asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-10 col-md-offset-1 ">
                        <div class="btn-group btn-group-justified cntr" role="group" aria-label="Dobtn">
                            <div class="btn-group" role="group">
                                <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" CssClass=" btn btn-success cntr btn-outline " />
                            </div>

                            <div class="btn-group" role="group">
                                <asp:Button ID="reset" runat="server" Text="Reset" CssClass="btn btn-info cntr btn-outline " OnClick="reset_Click" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 text-center">
                        <br />
                    <br />
                    <asp:Label ID="Label12" runat="server" Text="" ForeColor="#ff6666" Font-Size="18px" ></asp:Label>
                    </div>

           <%--         <div class="col-md-12">
                        <br />
                        <br />
                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" />
                    </div>--%>
                </div>
                <br />
                <br />
                <br />
            </div>
    </form>

</body>
</html>
