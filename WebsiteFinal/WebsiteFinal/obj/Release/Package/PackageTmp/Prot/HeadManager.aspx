<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HeadManager.aspx.cs" Inherits="WebsiteFinal.Prot.HeadManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style4 {}
        .auto-style5 {}
        .auto-style6 {}
        .auto-style8 {
            font-weight: 700;
        }
        .auto-style9 {
            font-weight: 700;
        }
        .auto-style10 {
            font-weight: 700;
        }
        .auto-style11 {
            font-weight: 700;
        }
        .auto-style12 {
            font-weight: 700;
        }
        .auto-style13 {}
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    &nbsp;<asp:Label ID="txtUserName" runat="server" Text="Label"></asp:Label>, you are logged in. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Button ID="Logout" runat="server" Text="Log Out" OnClick="Logout_Click" />
        <br />
        <br />
        <strong><span class="auto-style2">Manager Page</span><span class="auto-style1"> 
        <br />
        <br />
        </span>
        </strong>
        <span>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </span><br />


        <br />


        


        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="User Details" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Utilities" />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" Text="Edit Utilities" OnClick="Button4_Click" Visible="False" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Text="Add a new Utility" OnClick="Button5_Click" Visible="False" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text="Select Utility :" Visible="False"></asp:Label>
        <strong>&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="utilitiesList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="utilitiesList_SelectedIndexChanged" Visible="False">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label7" runat="server" CssClass="auto-style12" Text="Utility Name:" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style13" Visible="False" Width="230px"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" CssClass="auto-style9" Text="Utility Name :" Visible="False"></asp:Label>
        <strong>&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Width="230px" Visible="False"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" CssClass="auto-style10" Text="Description :&nbsp;" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" TextMode="MultiLine" runat="server" CssClass="auto-style5" Height="58px" Width="230px" Visible="False"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" CssClass="auto-style11" Text="Price :" Visible="False"></asp:Label>
        <strong>&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style6" Width="230px" Visible="False"></asp:TextBox>


        


        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" Visible="False" />
        <br />
        <br />
        <asp:Label ID="message" runat="server" Text="Label" Visible="False"></asp:Label>


        


        <br />
 
    </div>
    </form>
</body>
</html>
