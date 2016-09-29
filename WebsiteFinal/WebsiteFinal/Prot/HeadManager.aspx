<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HeadManager.aspx.cs" Inherits="WebsiteFinal.Prot.HeadManager" %>

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
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style8,.auto-style9,.auto-style10,.auto-style11,.auto-style12 {
            display: inline-block;
            font-weight: 700;
            text-align: right;
            width: 105px;
            height: 28px;
            line-height: 28px;
        }
        .auto-style4,.auto-style5,.auto-style6,select,.auto-style13 {
            width: 230px;
            height: 26px;
            border-radius: 4px;
            border: none;
            box-shadow: 0 0 5px #555;
            padding-left: 10px;
            margin-left: 30px;
        }
        select {
            width: 240px;
        }
        h1 {
            color: #fff;
            background-color: #002667;
            font: 26px Arial;
            font-weight: bold;
            text-align: center;
            padding: 10px 0;
            margin: 0;
        }
        #Label1 {
            text-transform: capitalize;
            display: block;
            margin: 20px 0;
            font-weight: bold;
            color: #002667;
        }
        #Logout,#Button1,#Button2,#Button3,#Button4,#Button5 {
            margin: 20px 0px 20px 25px;
            padding: 7px 10px;
            border: none;
            background-color: #002667;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
        }
        #Button3 {
            margin-left: 50px;
        }
        #TextBox2 {
            height: 80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!--<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="txtUserName" runat="server" Text="Label"></asp:Label>, you are logged in.-->
        <h1>Manager Page</h1>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="User Details" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Utilities" />
        <asp:Button ID="Logout" runat="server" Text="Log Out" OnClick="Logout_Click" />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" Text="Edit Utilities" OnClick="Button4_Click" Visible="False" />
        <asp:Button ID="Button5" runat="server" Text="Add a new Utility" OnClick="Button5_Click" Visible="False" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text="Select Utility :" Visible="False"></asp:Label>
        <asp:DropDownList ID="utilitiesList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="utilitiesList_SelectedIndexChanged" Visible="False">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label7" runat="server" CssClass="auto-style12" Text="Utility Name:" Visible="False"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style13" Visible="False"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" CssClass="auto-style9" Text="Utility Name :" Visible="False"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Visible="False"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" CssClass="auto-style10" Text="Description :" Visible="False"></asp:Label>
        <asp:TextBox ID="TextBox2" TextMode="MultiLine" runat="server" CssClass="auto-style5" Visible="False"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" CssClass="auto-style11" Text="Price :" Visible="False"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style6" Visible="False"></asp:TextBox>
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" Visible="False" />
        <br />
        <br />
        <asp:Label ID="message" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
 
    </div>
    </form>
</body>
</html>
