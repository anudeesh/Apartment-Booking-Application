using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace WebsiteFinal
{
    public partial class Registration : System.Web.UI.Page
    {
        public static String venu;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String URL = "http://venus.eas.asu.edu/WSRepository/Services/ImageVerifier/Service.svc/GetVerifierString/5";
                XmlDocument xmldoc = new XmlDocument();
                xmldoc.Load(URL);
                XmlNodeList node4 = xmldoc.GetElementsByTagName("string");
                venu = node4[0].InnerText;
                //Label2.Text = venu;
                Image1.ImageUrl = "http://venus.eas.asu.edu/WSRepository/Services/ImageVerifier/Service.svc//GetImage/" + venu;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            String name = TextBox1.Text;
            String uname = "";
            int registered = 0;
            String username = TextBox2.Text;
            String email = TextBox3.Text;
            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            Match match = regex.Match(email);
            if (match.Success)
            {

                String password = TextBox4.Text;
                String encryptd = EncryptionDecryption.Class1.Encryption(password);
                String cpassword = TextBox5.Text;
                String cstring = TextBox6.Text;

                if (password.Equals(cpassword))
                {
                    //FileStream fState = null;

                    Register user = new Register(name, username, email);
                    string num = Convert.ToString(Session.Count + 1); // Find the next free spot
                    string userkey = "suser" + num;  // Form the index key for next session spot
                    Session[userkey] = user; // Add an object into session state 


                    string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\user123.xml");

                    FileStream fState = null;
                    if (!File.Exists(fLocation))
                    {

                        try
                        {
                            fState = new FileStream(fLocation, FileMode.CreateNew);

                            XmlTextWriter writer = new XmlTextWriter(fState, System.Text.Encoding.Unicode);
                            writer.Formatting = Formatting.Indented;
                            writer.WriteStartDocument();
                            writer.WriteStartElement("users");
                            writer.WriteStartElement("user");
                            writer.WriteElementString("name", name);
                            writer.WriteElementString("username", username);
                            writer.WriteElementString("password", encryptd);
                            writer.WriteElementString("email", email);
                            writer.WriteEndElement();
                            writer.WriteEndElement();
                            writer.WriteEndDocument();
                            writer.Close();
                            fState.Close();
                        }
                        catch
                        {

                        }

                    }
                    else
                    {
                        XmlTextReader _xmlTextReader = new XmlTextReader(fLocation);
                        XmlDocument _xmlDocument = new XmlDocument();
                        _xmlDocument.Load(_xmlTextReader);

                        //Note: Close the reader object to release the xml file. Else while saving you will get an error that it is
                        //being used by another process.
                        _xmlTextReader.Close();

                        XmlDocument xmlDoc1 = new XmlDocument();
                        xmlDoc1.Load(Path.Combine(Request.PhysicalApplicationPath, @"App_Data\user123.xml"));

                        XmlNodeList nod = xmlDoc1.GetElementsByTagName("username");


                        foreach (XmlNode nod2 in nod)
                        {
                            uname = nod2.InnerText;
                            if (uname == username)
                            {
                                registered = 1;
                            }

                        }

                        if (registered == 0)
                        {
                            addNode(fLocation, _xmlDocument, name, username, encryptd, email);
                            Label1.Text = "Redirecting to Home page registration successful, login with your username and password to access service";
                            Response.Redirect("Home.aspx");
                        }
                        else
                        {
                            Label2.Text = "username exists";
                        }
                    }

                }
                else
                {
                    Label1.Text = "Passwords doesnot match";
                }
            }
            else
            {
                Label1.Text = "Email not valid, Give a valid email id, For example : venu@gmail.com";
            }
        }
        static void addNode(string fileName, XmlDocument xmlDoc, String name, String username, String password, String email)
        {
            XmlElement userselement = xmlDoc.CreateElement("user");
            //bookElement.SetAttribute("name", "DotNet Made Easy");

            XmlElement nameElement = xmlDoc.CreateElement("name");
            nameElement.InnerText = name;
            userselement.AppendChild(nameElement);

            XmlElement userElement = xmlDoc.CreateElement("username");
            userElement.InnerText = username;
            userselement.AppendChild(userElement);

            XmlElement pwdElement = xmlDoc.CreateElement("password");
            pwdElement.InnerText = password;
            userselement.AppendChild(pwdElement);

            XmlElement emailElement1 = xmlDoc.CreateElement("email");
            emailElement1.InnerText = email;
            userselement.AppendChild(emailElement1);

            xmlDoc.DocumentElement.AppendChild(userselement);
            xmlDoc.Save(fileName);

        }
    }
}