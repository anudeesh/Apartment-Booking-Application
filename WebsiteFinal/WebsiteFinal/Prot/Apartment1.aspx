<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apartment1.aspx.cs" Inherits="WebsiteFinal.Prot.Apartment1" %>
<%@ Register TagPrefix="usercontrol" TagName="Copyrights" Src="~/WebUserControl1.ascx"   %>
<%@ Register TagPrefix="usercontrolhead" TagName="image" Src="~/HeaderUserControl.ascx"   %>
<!--<img src="~/Image/images.jpg" runat="server"/>-->
<%@ OutputCache Duration="10" VaryByParam="None"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Apartment Finder</title>
    <style type="text/css">
        body{
            background-color:#ccc;
            font: 14px Arial;
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
        h1 {
            padding: 10px 0;
            color: #fff;
            background-color: #002667;
            font: 26px Arial;
            font-weight: bold;
            text-align: center;
        }
        .auto-style10 {
            color: #FF3300;
        }
        .auto-style11 {
            height: 50px;
        }
        .auto-style12 {
            width: 120px;
            height: 23px;
        }
        .auto-style13 {
            width: 120px;
        }
        .auto-style13>span, .auto-style12>span {
            font-size: 12px;
            display: inline-block;
            width: 90px;
            margin-top: 20px;
        }
        #Label1 {
            color: #002667;
            font-weight: 700;
            display: inline-block;
            text-transform: capitalize;
            font-size: 16px;
            margin: 10px 0 20px;
        }
        #TextBox1 {
            width: 190px;
            height: 24px;
            border-radius: 4px;
            border: none;
            box-shadow: 0 0 5px #555;
            padding-left: 10px;
        }
        #Button1,#Button2,#Button3,#Button4,#Button5,#Button6,#Button7,#Button8,#Button9,#Button10,#Button11,#Button12,#Button13 {
            width: 105px;
            height: 28px;
            border: none;
            background-color: #002667;
            color: #fff;
            border-radius: 5px;
            margin-left: 20px;
            cursor: pointer;
        }
        #Button2,#Button3,#Button4,#Button5,#Button6,#Button7,#Button8,#Button9,#Button10,#Button11,#Button12 {
            margin: 25px 0 0 0;
            width: 60px;
        }
        #Button2 {
            width: 90px;
        }
        #TextBox2,#TextBox3,#TextBox4,#TextBox5,#TextBox6,#TextBox7,#TextBox8,#TextBox9,#TextBox10,#TextBox11 {
            height: 55px;
            width: 454px;
            border-radius: 4px;
            border: none;
            box-shadow: 0 0 5px #555;
            margin-top: 25px;
        }
        .logout-row .auto-style5{
            text-align: center;
        }
        table {
            width: 60%;
            margin: 0 auto;
        }
    </style>
</head>
<body>

     <usercontrolhead:image ID="Image1" runat ="server"/>
    <form id="form1" runat="server">
       
        <h1>Apartment Finder</h1>
        <table>
            <tr>
                <td class="auto-style11" colspan="4"><span class="auto-style10">Description : Takes Zipcode as input and provides the apartment list in that area using information from yelp.com.</span></td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Enter Zip code :</td>
                <td class="auto-style4" colspan="3">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Invoke"/>
                    <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" Text="Get News" />
                    <!--<asp:Button ID="Button14" runat="server" OnClick="Button14_Click" Text="Get Previous Search Keyword" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->
                    <asp:Label ID="Label12" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                    <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                    <asp:TextBox ID="TextBox9" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                    <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                    <asp:TextBox ID="TextBox11" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label11" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="Book" />
                </td>
            </tr>
            <tr class="logout-row">
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout"/>
                </td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    <usercontrol:Copyrights ID ="user" runat="server" /> 
    </div>
    </form>
</body>
</html>