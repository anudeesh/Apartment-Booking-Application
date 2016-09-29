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
            font-size: 18px;
            color: #CC3300;
            display: inline-block;
            margin: 10px 0;
            text-transform: capitalize;
        }
        .cont {
            text-align: center;
        }
        textarea {
            height: 300px;
            width: 645px;
            display: block;
            margin: 10px auto 30px;
            padding-left: 10px;
            border-radius: 4px;
            border: none;
            box-shadow: 0 0 5px #555;
        }
        #Button1 {
            padding: 7px 10px;
            border: none;
            background-color: #002667;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
    <usercontrolhead:image ID="Image2" runat ="server"/>
    <form id="form2" runat="server">
        <h1>MANAGER PAGE</h1>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <div class="cont">
            <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="Users Registered:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Orders placed by Users:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" CssClass="auto-style4"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" Width="77px" />
    </div>
    </form>
  
   <usercontrol:Copyrights ID ="user" runat="server" /> 
</body>
</html>
