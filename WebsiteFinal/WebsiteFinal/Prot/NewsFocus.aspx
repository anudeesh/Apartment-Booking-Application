<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsFocus.aspx.cs" Inherits="WebsiteFinal.Prot.NewsFocus" %>
<%@ Register TagPrefix="usercontrol" TagName="Copyrights" Src="~/WebUserControl1.ascx"   %>
<%@ Register TagPrefix="usercontrolhead" TagName="image" Src="~/HeaderUserControl.ascx"   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:#ccc;
            font: 14px Arial;
        }
        .auto-style2 {
            width: 238px;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            width: 146px;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style13 {
            width: 91px;
        }
        .auto-style15 {
            width: 146px;
            font-size: large;
            text-decoration: underline;
        }
        .main-cont {
            width: 650px;
            font-size: 18px;
            margin: 40px auto 30px;
        }
        .head-cont {
            overflow: hidden;
        }
        .welcome {
            text-align: right;
            padding-right: 5px;
        }
        .welcome span {
            font-weight: bold;
            text-transform: capitalize;
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
        #TextBox1 {
            height: 32px;
            width: 200px;
            border-radius: 4px;
            border: none;
            box-shadow: 0 0 5px #555;
            padding-left: 10px;
        }
        #Button1 {
            width: 90px;
            height: 30px;
            border: none;
            background-color: #002667;
            color: #fff;
            border-radius: 5px;
            margin-top: 20px;
            cursor: pointer;
            font-weight: bold;
            margin: 20px 0 0px 75px;
    }
        #ListBox1 {
            height: 212px;
            width: 491px;
            margin-top: 50px;
            border-radius: 4px;
            border: none;
            box-shadow: 0 0 5px #555;
            padding-left: 10px;
        }
        .back {
            margin-left: 50px;
            text-decoration: none;
            color: #fff;
            background-color: #002667;
            padding: 7px 14px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <usercontrolhead:image ID="Image1" runat ="server"/>
    <form id="form2" runat="server">
        <div class="head-cont">
            <h1>News Focus</h1>
           <p class="welcome"> You are logged in as, <asp:Label ID="txtUserName" runat="server" Text="Label"></asp:Label> </p>
            <!--<table style="width: 100%; height: 59px;">
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style2">
                        <h1 class="auto-style9" style="width: 379px">NewsFocus</h1>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="3"><span class="auto-style15"><strong>Description</strong></span><span class="auto-style12">: This service takes input a topic and returns all the latest news url&#39;s based on that topic. </span>
                        <br class="auto-style12" />
                        </td>
                </tr>
            </table>-->
            <!--<h1>News Focus</h1>
            <p><span>You are loggid in as, </span><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>
            <p class="description">Description: This service takes input a topic and returns all the latest news URLs based on that topic.</p>-->
        </div>
        <table class="main-cont">
            <tr>
                <td class="auto-style10">Topic:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="32px" style="font-size: large" Width="237px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">(E.g: Charlotte, Florida etc)</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style10">URL&#39;s:</td>
                <td>
                    <asp:ListBox ID="ListBox1" runat="server" Height="212px" Width="491px"></asp:ListBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </form>

    <br />
    <br />

    <a href="Apartment1.aspx" class="back">Back</a>
     <usercontrol:Copyrights ID ="user" runat="server" />
</body>
</html>
