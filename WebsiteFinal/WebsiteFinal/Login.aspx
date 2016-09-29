<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebsiteFinal.Login" %>
<%@ Register TagPrefix="usercontrolhead" TagName="image" Src="HeaderUserControl.ascx"   %>
<%@ Register TagPrefix="usercontrol" TagName="Copyrights" Src="WebUserControl1.ascx"   %>
<%@ OutputCache Duration="10" VaryByParam="None"  %>
<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
<style type="text/css">
    body{
        background-color: #ccc;
    }
    section {
        display: block;
        margin-top: 30px;
    }
    .featured .content-wrapper {
        background: #cfe7fa; /* Old browsers */
        background: -moz-linear-gradient(top,  #cfe7fa 0%, #6393c1 100%); /* FF3.6-15 */
        background: -webkit-linear-gradient(top,  #cfe7fa 0%,#6393c1 100%); /* Chrome10-25,Safari5.1-6 */
        background: linear-gradient(to bottom,  #cfe7fa 0%,#6393c1 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#cfe7fa', endColorstr='#6393c1',GradientType=0 ); /* IE6-9 */
        color: #3e5667;
        padding: 20px 40px 30px 40px;
        margin: 0 auto;
        max-width: 960px;
        border-radius: 5px;
        position:relative;
        font: 14px Arial;
        -webkit-box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
        -moz-box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
        box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
    }
    .featured .content-wrapper:before, .featured .content-wrapper:after
    {
        content:"";
        position:absolute;
        z-index:-1;
        -webkit-box-shadow:0 0 20px rgba(0,0,0,0.8);
        -moz-box-shadow:0 0 20px rgba(0,0,0,0.8);
        box-shadow:0 0 20px rgba(0,0,0,0.8);
        top:0;
        bottom:0;
        left:10px;
        right:10px;
        -moz-border-radius:100px / 10px;
        border-radius:100px / 10px;
    }
    .featured .content-wrapper:after
    {
        right:10px;
        left:auto;
        -webkit-transform:skew(8deg) rotate(3deg);
        -moz-transform:skew(8deg) rotate(3deg);
        -ms-transform:skew(8deg) rotate(3deg);
        -o-transform:skew(8deg) rotate(3deg);
        transform:skew(8deg) rotate(3deg);
    }
    .featured p {
        font-size: 20px;
        font-weight: bold;
        text-align: center;
    }
    .auto-style3 {
        color: #CC3300;
        font-size: x-large;
    }
    table {
        border-collapse: collapse;
        border-spacing: 0;
        margin-top: 0.75em;
        border: 0 none;
    }
    .auto-style1 {
        width: 123px;
        color: #002267;
    }
    td {
        padding: 0.25em 2em 0.25em 0em;
        border: 0 none;
    }
    .auto-style2 {
        width: 434px;
    }
    .auto-style7 {
        width: 123px;
        height: 73px;
        color: #002267;
    }
    .auto-style8 {
        width: 434px;
        height: 73px;
    }
    .auto-style9 {
        height: 73px;
        color: #FFFFFF;
    }
    .auto-style4 {
        width: 123px;
        height: 15px;
    }
    .auto-style5 {
        width: 434px;
        height: 15px;
    }
    .auto-style6 {
        height: 15px;
    }
    .auto-style10 {
        color: #003300;
    }
    .auto-style11 {
        width: 123px;
        color: #CC3300;
    }
    .auto-style12 {
        color: #002267;
    }
    #TextBox2,#TextBox3,#TextBox4 {
        width: 190px;
        height: 22px;
        border-radius: 4px;
        border: none;
        box-shadow: 0 0 5px #555;
        padding-left: 10px;
    }
    #Button1 {
        width: 113px;
        height: 30px;
        border: none;
        background-color: #002667;
        color: #fff;
        border-radius: 5px;
        margin-top: 20px;
        cursor: pointer;
    }
</style>
</head>
<body>
    <usercontrolhead:image ID="Image2" runat ="server"/>
    <form id="form1" runat="server">
    <div>
    
        <section class="featured">
            <div class="content-wrapper">
                <p class="auto-style3">
                    LOGIN
                </p>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style11"><span class="auto-style12">USERNAME</span> </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style10"></asp:TextBox>
                        </td>
                        <td class="auto-style10">Sample staff (Manager):<br />
                            username = anudeesh<br />
                            password = anudeesh</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">PASSWORD</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Captcha</td>
                        <td class="auto-style8">&nbsp;<asp:Image ID="Image1" runat="server" Width="130px" />
                        </td>
                        <td class="auto-style9">Sample user (Member):<br />
                            username&nbsp; = saahithi<br />
                            password = japan</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Enter the String in the image </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">
                            &nbsp;<asp:CheckBox ID="Persistent" runat="server" ForeColor="Blue" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Remember Me" />
                            &nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                        </td>
                        <td class="auto-style6">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4"></td>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style6">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style2">
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
        </section>
    
    </div>
    </form>
    <usercontrol:Copyrights ID ="user" runat="server" /> 
</body>
</html>
