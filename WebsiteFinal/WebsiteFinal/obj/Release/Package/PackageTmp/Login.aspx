<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebsiteFinal.Login" %>
<%@ Register TagPrefix="usercontrolhead" TagName="image" Src="HeaderUserControl.ascx"   %>
<%@ Register TagPrefix="usercontrol" TagName="Copyrights" Src="WebUserControl1.ascx"   %>
<%@ OutputCache Duration="10" VaryByParam="None"  %>
<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">

.featured {
    background-color: #fff;
}

    section {
    display: block;
}

    .featured .content-wrapper {
        padding: 10px;
    }

    .featured .content-wrapper {
        background-color: #7ac0da;
        background-image: -ms-linear-gradient(left, #7ac0da 0%, #a4d4e6 100%);
        background-image: -o-linear-gradient(left, #7ac0da 0%, #a4d4e6 100%);
        background-image: -webkit-gradient(linear, left top, right top, color-stop(0, #7ac0da), color-stop(1, #a4d4e6));
        background-image: -webkit-linear-gradient(left, #7ac0da 0%, #a4d4e6 100%);
        background-image: linear-gradient(left, #7ac0da 0%, #a4d4e6 100%);
        color: #3e5667;
        padding: 20px 40px 30px 40px;
    }

        .content-wrapper {
        padding-right: 10px;
        padding-left: 10px;
    }

    .content-wrapper {
    margin: 0 auto;
    max-width: 960px;
}

        .featured p {
            font-size: 1.1em;
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
            color: #003366;
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
                            <asp:TextBox ID="TextBox2" runat="server" Width="366px" CssClass="auto-style10"></asp:TextBox>
                        </td>
                        <td class="auto-style10">Sample staff (Manager):<br />
                            username = saikiran<br />
                            password = saikiran</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">PASSWORD</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox3" runat="server" Width="366px" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Captcha</td>
                        <td class="auto-style8">&nbsp;<asp:Image ID="Image1" runat="server" Width="130px" />
                        </td>
                        <td class="auto-style9">Sample user (Member):<br />
                            username&nbsp; = venukumar<br />
                            password = venukumar</td>
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
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="113px" />
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
