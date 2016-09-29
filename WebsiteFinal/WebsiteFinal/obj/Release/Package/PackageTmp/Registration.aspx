<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebsiteFinal.Registration" %>
<%@ Register TagPrefix="usercontrolhead" TagName="image" Src="HeaderUserControl.ascx"   %>
<%@ Register TagPrefix="usercontrol" TagName="Copyrights" Src="WebUserControl1.ascx"   %>
<%@ OutputCache Duration="10" VaryByParam="None"  %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 169px;
        }
        .auto-style10 {
            width: 346px;
        }
        .auto-style2 {
            width: 169px;
            height: 50px;
        }
        .auto-style11 {
            height: 50px;
            width: 346px;
        }
        .auto-style3 {
            height: 50px;
        }
        .auto-style4 {
            width: 169px;
            height: 51px;
        }
        .auto-style12 {
            height: 51px;
            width: 346px;
        }
        .auto-style5 {
            height: 51px;
        }
        .auto-style6 {
            width: 169px;
            height: 46px;
        }
        .auto-style13 {
            height: 46px;
            width: 346px;
        }
        .auto-style7 {
            height: 46px;
        }
        .auto-style8 {
            width: 169px;
            height: 53px;
        }
        .auto-style14 {
            height: 53px;
            width: 346px;
        }
        .auto-style9 {
            height: 53px;
        }
        .auto-style18 {
            width: 169px;
            height: 44px;
        }
        .auto-style19 {
            width: 346px;
            height: 44px;
        }
        .auto-style20 {
            height: 44px;
        }
        .auto-style21 {
            width: 169px;
            height: 70px;
        }
        .auto-style22 {
            height: 70px;
            width: 346px;
        }
        .auto-style23 {
            height: 70px;
        }
        .auto-style24 {
            width: 169px;
            height: 55px;
        }
        .auto-style25 {
            height: 55px;
            width: 346px;
        }
        .auto-style26 {
            height: 55px;
        }
        .auto-style27 {
            color: #FF0000;
            font-size: large;
        }
        .auto-style28 {
            color: #FF0000;
            font-size: large;
        }
    </style>
</head>
<body>
    <usercontrolhead:image ID="Image2" runat ="server"/>
    <form id="form2" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style10">To register give all the values and press submit. User credentials wil be stored in the xml file. Provide the same values to to ogin use the service.</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Name</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="347px"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1"
                                    CssClass="field-validation-error" ErrorMessage="The  Name field is required." /></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style4">Username</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="346px"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2"
                                    CssClass="field-validation-error" ErrorMessage="The user name field is required." /></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style6">Email&nbsp; ID</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="348px"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3"
                                    CssClass="field-validation-error" ErrorMessage="The email address field is required." /></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style8">Password</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="349px" TextMode="Password"></asp:TextBox>
                </td>
                 <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4"
                                    CssClass="field-validation-error" ErrorMessage="The password field is required." /></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style21">Confirm Password</td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox5" runat="server" Height="26px" Width="349px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style23"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." /></td>
                <td class="auto-style23"></td>
            </tr>
            <tr>
                <td class="auto-style24">Captcha</td>
                <td class="auto-style25">
                    <asp:Image ID="Image1" runat="server" />
                </td>
                <td class="auto-style26">
                    <br />
                    <br />
                    If the captcha string you enter is wrong it will redirect to this page. If its correct it will go to home page and cookie is used to provide a welcome message with the user name of registered user. Then login to access the services.</td>
            </tr>
            <tr>
                <td class="auto-style18">Enter Captcha string</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox6" runat="server" Height="26px" Width="349px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="95px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style19">
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style27"></asp:Label>
                </td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style19">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style28"></asp:Label>
                </td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
    <usercontrol:Copyrights ID ="user" runat="server" /> 
</body>
</html>
