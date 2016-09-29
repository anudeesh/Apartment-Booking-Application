<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manager1.aspx.cs" Inherits="WebsiteFinal.Prot.manager1" %>


<%@ Register TagPrefix="usercontrolhead" TagName="image" Src="~/HeaderUserControl.ascx"   %>
<%@ Register TagPrefix="usercontrol" TagName="Copyrights" Src="~/WebUserControl1.ascx"   %>
<%@ OutputCache Duration="10" VaryByParam="None"  %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #0000FF;
            font-size: x-large;
        }
        .auto-style2 {
            font-weight: 700;
            font-size: x-large;
        }
        .auto-style3 {
            font-weight: 700;
            font-size: x-large;
        }
        .auto-style4 {}
    </style>
</head>
<body>
    <usercontrolhead:image ID="Image2" runat ="server"/>
    <form id="form2" runat="server">
        &nbsp;<span class="auto-style1"><strong>MANAGER PAGE</strong></span><br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" style="font-size: large; color: #CC3300"></asp:Label>
    &nbsp;<div>
    
        <br />
            This is the manager page all the registered users will be displayed here<br />
            <br />
            <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="Users Registered:"></asp:Label>
            <br />
            <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="443px" Width="645px" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
            <br />
            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Orders placed by Users:"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" CssClass="auto-style4" Height="252px" Width="644px"></asp:TextBox>
            <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" Width="77px" />
        <br />
    
    </div>
    </form>
  
   <usercontrol:Copyrights ID ="user" runat="server" /> 
</body>
</html>
