<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CreditCardVerificationTryItPage._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
        .auto-style8 {
            width: 208px;
        }
        .auto-style10 {
            text-decoration: underline;
            font-size: large;
        }
        .auto-style11 {
            font-size: large;
        }
        .auto-style12 {
            width: 79px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%; height: 59px;">
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style2">
                        <h1 class="auto-style9" style="width: 379px">CreditCardVerification Service - TryIt</h1>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="3"><span class="auto-style10"><strong>Description</strong></span><span class="auto-style11">: This service verifies whether a given credit card number is valid or not. If it is a valid CC number then it returns the type of the card such as Visa, MasterCard etc.</span><br class="auto-style11" />
                        <span class="auto-style10"><strong>Input</strong></span><span class="auto-style11">: 16 digit credit card number.</span><br class="auto-style11" />
                        <span class="auto-style10"><strong>Output</strong></span><span class="auto-style11">: Card type or Invalid statement.</span></td>
                </tr>
            </table>
        <table style="width: 100%; height: 162px; font-size: large;">
            <tr>
                <td class="auto-style8">Enter Credit Card Number:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" style="font-size: large" Width="237px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-size: large" Text="Submit" Width="89px" />
                </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style8">Card Type:</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
