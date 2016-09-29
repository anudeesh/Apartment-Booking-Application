<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsFocus.aspx.cs" Inherits="WebsiteFinal.Prot.NewsFocus" %>
<%@ Register TagPrefix="usercontrol" TagName="Copyrights" Src="~/WebUserControl1.ascx"   %>
<%@ Register TagPrefix="usercontrolhead" TagName="image" Src="~/HeaderUserControl.ascx"   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">

        .auto-style3 {
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
    </style>
</head>
<body>
    <usercontrolhead:image ID="Image1" runat ="server"/>
    <form id="form2" runat="server">
        <div>
            &nbsp;<asp:Label ID="txtUserName" runat="server" Text="Label"></asp:Label>, you are logged in. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


        <br />

            <table style="width: 100%; height: 59px;">
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
            </table>
        </div>
        <table style="width: 100%; height: 162px; font-size: large;">
            <tr>
                <td class="auto-style10">Topic:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="32px" style="font-size: large" Width="237px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">(E.g: arizona, tempe etc)</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-size: large" Text="Submit" Width="89px" />
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

    <a href="Apartment1.aspx">Click Here</a> to goto Apartment Listing Page
    <br />
     <usercontrol:Copyrights ID ="user" runat="server" />
</body>
</html>
