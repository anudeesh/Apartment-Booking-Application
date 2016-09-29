<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="WebsiteFinal.Prot.ShoppingCart" %>
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
            font-size: x-large;
            text-decoration: underline;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style6 {
            font-size: large;
        }
        #txtUserName {
            text-transform: capitalize;
            font-weight: bold;
        }
         #Logout {
            float: right;
            margin-right: 10px;
            padding: 7px 10px;
            border: none;
            background-color: #002667;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
        }
         #Button1,#Button2,#Button3 {
            margin-right: 30px;
            padding: 7px 10px;
            border: none;
            background-color: #002667;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
         }
         select {
            height: 121px;
            width: 132px;
            border-radius: 4px;
            border: none;
            box-shadow: 0 0 5px #555;
            padding: 5px 0 0 5px;
            margin-right: 10px;
        }
         #utilitiesSelected {
             width: 210px;
         }
         .auto-style2 span {
             display: inline-block;
             width: 132px;
             margin: 0 10px 10px 0;
             text-align: center;
         }
         .auto-style2 span.uti-label {
             width: 210px;
         }
         
    </style>
</head>
<body>
    <usercontrolhead:image ID="Image1" runat ="server"/>
    <form id="form1" runat="server">
    <div>
        You are logged in as, <asp:Label ID="txtUserName" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Logout" runat="server" Text="Log Out" OnClick="Logout_Click" />
        <!--<asp:Button ID="myCart" runat="server" Text="My Cart" OnClick="myCart_Click" />-->
        
        <br />
        <br />
        <span class="auto-style1"><strong>My Shopping Cart: </strong></span><br />

        
        <br />
        <strong><span class="auto-style2"><span class="uti-label">Selected Utilities</span><span>Qty</span><span>Price</span><span>Total Price</span></span></strong><br />
        <asp:ListBox ID="utilitiesSelected" runat="server" CssClass="auto-style3"></asp:ListBox>
        <asp:ListBox ID="quantityList" runat="server" CssClass="auto-style4"></asp:ListBox>
        <asp:ListBox ID="priceList" runat="server" CssClass="auto-style5"></asp:ListBox>
        <asp:ListBox ID="totalPriceList" runat="server" CssClass="auto-style5"></asp:ListBox>

        <br />
        <br />
        <span class="subtotal">Subtotal</span>
        <asp:Label ID="subtotal" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <span class="auto-style2"><strong>Total Amount:</strong></span>
        <asp:Label ID="totalAmount" runat="server" CssClass="auto-style6" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Continue Shopping" />
        <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Text="Clear Cart" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Proceed to checkout" OnClick="Button3_Click" />

        
    </div>
         <usercontrol:Copyrights ID ="user" runat="server" />
    </form>
</body>
</html>
