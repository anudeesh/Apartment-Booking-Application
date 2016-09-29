using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using HtmlAgilityPack;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
public class Service : IService
{
    public string[] NewsFocus(string Topic)
    {

        string[] urls = new string[20];
        int i = 0;
        HtmlWeb htmlWeb = new HtmlWeb();
        string url = "http://www.topix.com/search/article?q=" + Topic;
        HtmlDocument doc = htmlWeb.Load(url);
        HtmlNodeCollection hrefs = doc.DocumentNode.SelectNodes("//a[@t='artclick']");

        foreach (HtmlNode href in hrefs)
        {
            urls[i] = href.Attributes["href"].Value;
            i++;
        }
        return urls;
    }
}
