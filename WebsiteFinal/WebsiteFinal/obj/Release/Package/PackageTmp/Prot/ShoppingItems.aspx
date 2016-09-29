<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingItems.aspx.cs" Inherits="WebsiteFinal.Prot.ShoppingItems" %>
<%@ Register TagPrefix="usercontrol" TagName="Copyrights" Src="~/WebUserControl1.ascx"   %>
<%@ Register TagPrefix="usercontrolhead" TagName="image" Src="~/HeaderUserControl.ascx"   %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-decoration: underline;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            font-size: medium;
        }
        .auto-style5 {
            font-size: medium;
        }
        .auto-style6 {
            font-size: medium;
            font-weight: 700;
        }
        .auto-style7 {}
        .auto-style8 {
            font-weight: 700;
            text-decoration: underline;
            font-size: large;
        }
        .auto-style9 {
            font-weight: 700;
            font-size: medium;
        }
        .auto-style10 {
            font-weight: 700;
            font-size: medium;
        }
        .auto-style11 {
            font-weight: 700;
            font-size: medium;
        }
    </style>
</head>
<body>
    <usercontrolhead:image ID="Image1" runat ="server"/>
    <form id="form2" runat="server">
    <div>
        &nbsp;<asp:Label ID="txtUserName" runat="server" Text="Label"></asp:Label>, you are logged in. 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Button ID="myCart" runat="server" Text="My Cart" OnClick="myCart_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Logout" runat="server" Text="Log Out" OnClick="Logout_Click" />
        <br />
        <br />
        <span class="auto-style1"><strong>Utilities Included:</strong></span><br />
        <br />
        <strong>Apartment:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="apartmentName" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <strong>Select Utilities Needed:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="utilitiesList" runat="server" OnSelectedIndexChanged="utilitiesList_SelectedIndexChanged" AutoPostBack="true">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="description" runat="server" CssClass="auto-style8" Text="Description:" Visible="False"></asp:Label>
        <br />
        <span class="auto-style2">
        <br />
        <asp:Label ID="Label1" runat="server" Text="Utility Name: " CssClass="auto-style9" Visible="False"></asp:Label>
        &nbsp;
        <asp:Label ID="utility" runat="server" CssClass="auto-style3" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Details: " CssClass="auto-style10" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="desc" runat="server" CssClass="auto-style4" Text="Label" Visible="False"></asp:Label>
        <br />
        <strong>
        <br />
        </strong>
        <asp:Label ID="Label3" runat="server" Text="Price: " CssClass="auto-style11" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="price" runat="server" CssClass="auto-style5" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Label ID="quantity" runat="server" CssClass="auto-style6" Text="Label" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="quantityField" runat="server" CssClass="auto-style7" Visible="False" Width="24px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="addToCart" runat="server" OnClick="addToCart_Click" Text="Add to Cart" Visible="False" />
        </span>
    
    </div>
         <usercontrol:Copyrights ID ="user" runat="server" />
    </form>
</body>
</html>
