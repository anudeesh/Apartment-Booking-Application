<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="WebsiteFinal.Prot.Checkout" %>
<%@ Register TagPrefix="usercontrol" TagName="Copyrights" Src="~/WebUserControl1.ascx"   %>
<%@ Register TagPrefix="usercontrolhead" TagName="image" Src="~/HeaderUserControl.ascx"   %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:#ccc;
            font: 14px Arial;
        }
        .auto-style1 {
            text-decoration: underline;
            display: block;
            margin: 20px 0;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style4 {
            font-weight: 700;
            font-size: large;
        }
        #txtUserName {
            text-transform: capitalize;
            font-weight: bold;
        }
         #Logout, #Button1 {
            float: right;
            margin-right: 10px;
            padding: 7px 10px;
            border: none;
            background-color: #002667;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
        }
        #Button1 {
            float: none;
        }
        #TextBox1 {
            border-radius: 4px;
            border: none;
            box-shadow: 0 0 5px #555;
            padding: 0 0 0 5px;
        }
    </style>
</head>
<body>
    <usercontrolhead:image ID="Image1" runat ="server"/>
    <form id="form1" runat="server">
    <div>
        You are logged in as, <asp:Label ID="txtUserName" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Logout" runat="server" Text="Log Out" OnClick="Logout_Click" />
        
        <span class="auto-style1"><strong><span class="auto-style2">Check Out:</span> </strong></span>
        Apartment Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="apartmentName" runat="server" Text="Label"></asp:Label>
        <br />


        <br />
        Utilities Selected:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="utilitiesSelectedList" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        Total Amount:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="totalAmount" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        Credit Card Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3" Height="26px" Width="312px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm Payment" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="errorMessage" runat="server" Text="Label" Visible="False" CssClass="auto-style4"></asp:Label>


    </div>
         <usercontrol:Copyrights ID ="user" runat="server" />
    </form>
</body>
</html>
