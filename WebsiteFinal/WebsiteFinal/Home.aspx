<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebsiteFinal.Home" %>
<%@ Register TagPrefix="usercontrolhead" TagName="image" Src="HeaderUserControl.ascx"   %>
<%@ Register TagPrefix="usercontrol" TagName="Copyrights" Src="WebUserControl1.ascx"   %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:#ccc;
        }
        .auto-style1 {
        }
        .auto-style2 {
            width: 120px;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            text-align: justify;
            line-height: 115%;
            font-size: 14px;
            font-family: Arial;
            margin: 15px 0 0 0;
            width: 70%;
        }
        .home-option input{
            border: none;
            background-color: #002267;
            padding: 10px 20px;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
        }
        table{
            width: 95%;
            margin-left: 5%;
        }
        #form1{
            margin-bottom: 30px;
        }
        
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>
<body>
    <usercontrolhead:image ID="Image1" runat ="server"/>
    <form id="form1" runat="server">
    <div>
    
        <table>
            <tr class="about-proj">
                <td class="auto-style1" colspan="3">
                    <asp:Label ID="Label1" runat="server" style="color: #0000FF; font-weight: 700"></asp:Label>
                    <br />
                    <p class="auto-style4" style="text-justify: inter-ideograph;">
                        <span>Our project is about Apartment Booking application which assists the users in finding apartments in a particular area and also provides access to various utilities provided. Initially, user need to register to our application by providing his/her details. User can use the same username and password when he/she revisits the login page. User need to login by clicking on the Member login button and provide credentials. User logs in to the website and can check various apartments that are available in a particular area. User can select any of the apartment that he/she is interested and will be directed to utilities page where we can select the utilities that we want. User can view a list of utilities that are available and can select them. After the selection, user can view the list of items in the cart and can proceed to checkout or add more items into the cart. User then need to provide a valid credit card number which will be verified and confirmation will be 
                        displayed on the screen. Once the user logs into the website, user sessions are active and maintained using session state. Only authorized users with valid login credentials can view private pages. <o:p></o:p>
                        </span>
                    </p>
                    <p class="auto-style4" style="mso-add-space: auto; text-justify: inter-ideograph;">
                        <span>Manager can view the users who are registered to the website, his/hers username and email id. He/she can also view the orders placed by the users, what all utilities they added and the total amount of their transaction.<o:p></o:p></span></p>
                    <p class="auto-style4" style="mso-add-space: auto; text-justify: inter-ideograph;">
                        H<span>ead manager can see what all utilities are provided to the user. Head manager can check the utilities their description and rate. He can edit a utility already present. He can also add new utility to the list of utilities.<span style="mso-spacerun:yes">&nbsp;&nbsp; </span><o:p></o:p></span>
                    </p>
                    <p class="auto-style4" style="text-justify: inter-ideograph;">
                        <o:p><strong>DLL Implementation:</strong> Encryption and decryption of user entered passwords in login/register pages.</o:p></p>
                    <p class="auto-style4" style="text-justify: inter-ideograph;">
                        <o:p><strong>User Control Pages: </strong>The website header (photo with timestamp) and footer (copyrights).</o:p></p>
                    <p class="auto-style4" style="text-justify: inter-ideograph;">
                        <o:p><strong>XML Database Implementation:</strong> User details, user credentials, utilities Listings, user selected apartment and utility lists.</o:p></p>
                    <p class="auto-style4" style="text-justify: inter-ideograph;">
                        <o:p><strong>Data Cache:</strong> In apartment search web page. Path: Member Login -&gt; Apartment.aspx. It stores previous search zipcodes and displays those if user requests them.</o:p></p>
                    <p class="auto-style4" style="text-justify: inter-ideograph;">
                        <o:p><strong>Cookies &amp; Session State: </strong>Each and every page of this application has cookies which store user name and sessions to access data in different pages. </o:p>
                    </p>
                    <p class="auto-style4" style="text-justify: inter-ideograph;">
                        <o:p></o:p>
                    </p>
                    <br />
                </td>
            </tr>
            <tr class="home-option">
                <td class="auto-style1">Staff Login</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enter" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr class="home-option">
                <td class="auto-style1">Member Login</td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Enter" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr class="home-option">
                <td class="auto-style2">Registration</td>
                <td class="auto-style3">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Enter" />
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr class="home-option">
                <td class="auto-style1">About</td>
                <td>
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Enter" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
    <usercontrol:Copyrights ID ="user" runat="server" /> 
</body>
    
</html>