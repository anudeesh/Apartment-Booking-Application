<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebsiteFinal.Registration" %>
<%@ Register TagPrefix="usercontrolhead" TagName="image" Src="HeaderUserControl.ascx"   %>
<%@ Register TagPrefix="usercontrol" TagName="Copyrights" Src="WebUserControl1.ascx"   %>
<%@ OutputCache Duration="10" VaryByParam="None"  %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:#ccc;
            font: 14px Arial;
        }
        .auto-style1 {
            width: 169px;
        }
        .auto-style10 {
            font-size: 16px;
            font-weight: bold;
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
        table {
            width: 50%;
            margin: 0 auto;
            padding: 20px 40px 30px 40px;
            margin: 0 auto;
            border-radius: 5px;
            -webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
            -moz-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
            box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
            background-color: #fff;
        }
        #TextBox1,#TextBox2,#TextBox3,#TextBox4,#TextBox5,#TextBox6 {
            width: 250px;
            height: 26px;
            border-radius: 4px;
            border: none;
            box-shadow: 0 0 5px #555;
            padding-left: 10px;
        }
        #Button1 {
            padding: 7px 10px;
            border: none;
            background-color: #002667;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
            margin: 10px 0 10px 50px;
            width: 80px;
        }
    </style>
</head>
<body>
    <usercontrolhead:image ID="Image2" runat ="server"/>
    <form id="form2" runat="server">
        <table>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style10">Please provide the below details</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Name</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1"
                                    CssClass="field-validation-error" ErrorMessage="The  Name field is required." /></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style4">Username</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2"
                                    CssClass="field-validation-error" ErrorMessage="The user name field is required." /></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style6">Email&nbsp; ID</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3"
                                    CssClass="field-validation-error" ErrorMessage="The email address field is required." /></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style8">Password</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                 <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4"
                                    CssClass="field-validation-error" ErrorMessage="The password field is required." /></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style21">Confirm Password</td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
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
                <td class="auto-style26"></td>
            </tr>
            <tr>
                <td class="auto-style18">Enter Captcha string</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style19">
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style27"></asp:Label>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="95px" />
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
