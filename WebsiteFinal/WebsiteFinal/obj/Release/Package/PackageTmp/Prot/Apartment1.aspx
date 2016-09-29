<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apartment1.aspx.cs" Inherits="WebsiteFinal.Prot.Apartment1" %>
<%@ Register TagPrefix="usercontrol" TagName="Copyrights" Src="~/WebUserControl1.ascx"   %>
<%@ Register TagPrefix="usercontrolhead" TagName="image" Src="~/HeaderUserControl.ascx"   %>
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
            width: 518px;
        }
        .auto-style6 {
            width: 118px;
            height: 23px;
        }
        .auto-style7 {
            width: 518px;
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
        .auto-style12 {
            width: 120px;
            height: 23px;
        }
        .auto-style13 {
            width: 120px;
        }
        </style>
</head>
<body>

     <usercontrolhead:image ID="Image1" runat ="server"/>
    <form id="form1" runat="server">
       
      
        <table style="width: 100%; height: 404px;">
            <tr>
                <td class="auto-style9" colspan="4"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; APARTMENT FINDER</strong></td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="4"><span class="auto-style10"><strong>Description :&nbsp; Takes Zipcode as input and provides the apartment list in that area using information from yelp.com. </strong></span>
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
                <td colspan="3">
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Enter Zip code</td>
                <td class="auto-style4" colspan="3">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Width="269px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Invoke" Width="105px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" Text="Get News about the location" />
                    <br />
                    <br />
                    <asp:Button ID="Button14" runat="server" OnClick="Button14_Click" Text="Get Previous Search Keyword" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label12" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server" Width="507px" TextMode="MultiLine" Height="53px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Book" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox3" runat="server" Width="507px" TextMode="MultiLine" Height="47px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Book" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox4" runat="server" Width="508px" TextMode="MultiLine" Height="55px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Book" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox5" runat="server" Width="507px" TextMode="MultiLine" Height="53px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Book" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox6" runat="server" Width="506px" TextMode="MultiLine" Height="52px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Book" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox7" runat="server" Width="506px" TextMode="MultiLine" Height="55px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Book" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox8" runat="server" Width="506px" TextMode="MultiLine" Height="59px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Book" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox9" runat="server" Width="507px" TextMode="MultiLine" Height="60px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Book" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox10" runat="server" Width="505px" TextMode="MultiLine" Height="60px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label10" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Book" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox11" runat="server" Width="506px" TextMode="MultiLine" Height="68px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label11" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="Book" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout" Width="161px" />
                </td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    <usercontrol:Copyrights ID ="user" runat="server" /> 
    </div>
    </form>
</body>
</html>