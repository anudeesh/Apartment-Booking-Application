using HtmlAgilityPack;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Web.UI;
using System.Xml;


// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
public class Service : IService
{
	public string GetData(int value)
	{
		return string.Format("You entered: {0}", value);
	}

	public CompositeType GetDataUsingDataContract(CompositeType composite)
	{
		if (composite == null)
		{
			throw new ArgumentNullException("composite");
		}
		if (composite.BoolValue)
		{
			composite.StringValue += "Suffix";
		}
		return composite;
	}

    public string[] ApartmentFinder(string zipcode)
    {
        string[] combined = new string[100];
        try
        {

            string[] apartment = new string[200];
            string[] address = new string[200];

            int i = 0;
            int j = 0;
            int pages = 0;
            HtmlWeb htmlpage = new HtmlWeb();
            int temp = pages * 10;
            string url = "http://www.yelp.com/search?find_desc=apartments&find_loc=" + zipcode;
            string url1 = "http://www.yelp.com/search?find_desc=apartments&find_loc=85281&ns=1#start=10";

            HtmlDocument doc = htmlpage.Load(url);
            HtmlNodeCollection itemList = doc.DocumentNode.SelectNodes("//a[@class='biz-name']");
            HtmlNodeCollection itemList1 = doc.DocumentNode.SelectNodes("//address");


            foreach (HtmlNode name in itemList)
            {
                apartment[i] = name.InnerText;

                i++;
            }

            foreach (HtmlNode add in itemList1)
            {
                address[j] = add.InnerText;

                j++;
            }

            HtmlDocument doc1 = htmlpage.Load(url1);

            HtmlNodeCollection itemList2 = doc1.DocumentNode.SelectNodes("//a[@class='biz-name']");
            HtmlNodeCollection itemList3 = doc1.DocumentNode.SelectNodes("//address");
            foreach (HtmlNode href1 in itemList2)
            {

                i++;
            }

            foreach (HtmlNode href3 in itemList3)
            {

                j++;
            }

            pages++;

            
            Array.Copy(apartment, combined, 10);
            Array.Copy(address, 0, combined, 10, 10);

            return combined;
        }
        catch (Exception)
        {
            combined[0] = "Invalid zipcode";
            return combined;
        }


    }
  

}
