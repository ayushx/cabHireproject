<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reSignUpPage.aspx.cs" Inherits="CabHireProject.chechpages.reSignUpPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
        * {
  margin: 0;
  padding: 0;
}
    </style>
<body>
    gsgsg
<form id="form1" runat="server">
        <div class="col-md-6">
            <div class="col-md-10 col-md-offset-1" >
                   <div class="col-md-6 center-block">
                        
                            <asp:Label ID="Label1" runat="server" Text="Label">First Name</asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="First Name">
                                </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                runat="server" ErrorMessage="first name required" ControlToValidate="TextBox1" ForeColor="red">*</asp:RequiredFieldValidator>
                    </div>
                 
                <div class="col-md-6 center-block">
                            <asp:Label ID="Label2" runat="server" Text="Lable">Last Name</asp:Label>
                       
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                runat="server" ErrorMessage="last name required" ControlToValidate="TextBox2" ForeColor="red" >*</asp:RequiredFieldValidator>
                    </div>
                    
                    <div class="col-md-6 center-block">
                        
                            <asp:Label ID="Label9" runat="server" Text="User Name" ></asp:Label>
                     
                            <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="User Name" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10"
                                runat="server" ErrorMessage="User Id required" ControlToValidate="TextBox7" ForeColor="red">*</asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6 center-block">
                    
                            <asp:Label ID="Label3" runat="server" Text="Label">Email Id</asp:Label>
                     
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Email Id"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                runat="server" ErrorMessage="email required" ControlToValidate="TextBox3" ForeColor="red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ForeColor="Red"
                                ErrorMessage="Incorrect Email" ValidateRequestMode="Enabled" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </div>
                        
                   <div class="col-md-6 center-block">
                            <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
                        
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9"
                                runat="server" ErrorMessage="Password required" ControlToValidate="TextBox4" ForeColor="red">*</asp:RequiredFieldValidator>
                     </div>
                
                    <div class="col-md-6 center-block">
                            <asp:Label ID="Label7" runat="server" Text="Reapeat Password"></asp:Label>
                     
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Repeat Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not matched" ForeColor="Red"
                                ControlToValidate="TextBox5" ControlToCompare="TextBox4" Type="String">*</asp:CompareValidator>
                       </div>
                    
                    <div class="col-md-12 center-block " style="margin-right: 15px; ">
                            <asp:Label ID="Label5" runat="server" Text="Label">Gender</asp:Label>
                        <br />
                        <br>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="500px">
                                
                                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                                runat="server" ErrorMessage="gender required" ControlToValidate="RadioButtonList1" ForeColor="red">*</asp:RequiredFieldValidator>
                        </div>
                    
                   
                        <div class="col-md-12 center-block">
                            <asp:Label ID="Label4" runat="server" Text="Label">Date Of Birth</asp:Label>
                            </div>
                        <div>
                         <div class="col-md-4">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" >
                                <asp:ListItem Value="-1">Date</asp:ListItem>
                                <asp:ListItem Value="1">1</asp:ListItem>
                                <asp:ListItem Value="2">2</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                            </asp:DropDownList>
                       
                       
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" InitialValue="-1"
                                runat="server" ErrorMessage="Day is required" ControlToValidate="DropDownList1" ForeColor="red">*</asp:RequiredFieldValidator>
                             </div>
                         <div class="col-md-4">
                             <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
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
                              <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                                <asp:ListItem Value="-1">Year</asp:ListItem>
                                <asp:ListItem Value="1994">1994</asp:ListItem>
                                <asp:ListItem Value="1995">1995</asp:ListItem>
                                <asp:ListItem Value="1996">1996</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" InitialValue="-1"
                                runat="server" ErrorMessage="Year is required" ControlToValidate="DropDownList3" ForeColor="red">*</asp:RequiredFieldValidator>
                        </div>
                         </div>
                    
                    <div class="col-md-12">
                       
                            <asp:Label ID="Label8" runat="server" Text="Phone Number"></asp:Label>
                       
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="Repeat Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8"
                                runat="server" ErrorMessage="Phone number required" ControlToValidate="TextBox6" ForeColor="red">*</asp:RequiredFieldValidator>
                        </div>
                    <div class="col-md-10 col-md-offset-1 ">
                    <div class="btn-group btn-group-justified" role="group" aria-label="Dobtn">
  <div class="btn-group" role="group">
                            <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn btn-success " />
                   </div>
                
  <div class="btn-group" role="group">
                            <asp:Button ID="reset" runat="server" Text="Reset"  CssClass="btn btn-info " />
  </div>                  
  </div>
                        </div>
                <div class="col-md-12">
                    <br />
                    <br />
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                 </div>
                </div>
            </div>
        
        
    </form>
</body>
</html>
