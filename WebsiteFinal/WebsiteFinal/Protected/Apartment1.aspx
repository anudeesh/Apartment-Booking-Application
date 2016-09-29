<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apartment1.aspx.cs" Inherits="WebsiteFinal.Protected.Apartment1" %>

<!--<img src="~/Image/images.jpg" runat="server"/>-->
<%@ OutputCache Duration="10" VaryByParam="None"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
        }
        .auto-style3 {
            width: 118px;
        }
        .auto-style4 {
            height: 50px;
            }
        .auto-style5 {
            width: 389px;
        }
        .auto-style6 {
            width: 118px;
            height: 23px;
        }
        .auto-style7 {
            width: 389px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            height: 50px;
            color: #0066FF;
        }
        .auto-style10 {
            color: #FF3300;
        }
        .auto-style11 {
            height: 98px;
        }
        </style>
</head>
<body>

    <form id="form1" runat="server">
       
      
        <table style="width: 100%; height: 404px;">
            <tr>
                <td class="auto-style9" colspan="3"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; APARTMENT FINDER</strong></td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="3"><span class="auto-style10"><strong>Description :&nbsp; Takes Zipcode as input and provides the apartment list in that area using information from yelp.com. </strong></span>
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" style="color: #0000FF; font-weight: 700"></asp:Label>
                </td>
                <td colspan="2">
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Enter Zip code</td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Width="269px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Invoke" Width="105px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server" Width="473px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox3" runat="server" Width="473px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox4" runat="server" Width="473px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox5" runat="server" Width="472px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox6" runat="server" Width="471px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox7" runat="server" Width="471px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox8" runat="server" Width="471px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox9" runat="server" Width="470px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox10" runat="server" Width="469px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox11" runat="server" Width="468px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout" Width="161px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
