using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace AmazonReader.Models
{
    public class XMLData
    {
        public static List<Feeds> LoadDvdXML()
        {
            string url = String.Format("https://www.amazon.com/gp/rss/bestsellers/dvd");
            XDocument xdoc = new XDocument();
            xdoc = XDocument.Load(url);
            // var json = JsonConvert.SerializeXmlNode(xdoc.Descendan);
            var items = (from x in xdoc.Descendants("item")
                select new Feeds
                {
                    Title = x.Element("title").Value,
                    PublishDate = x.Element("pubDate").Value,
                    Description = x.Element("description").Value
                }).ToList();

            return items;
        }
        public static List<Feeds> LoadEbooksXML()
        {
            string url = String.Format("https://www.amazon.com/gp/rss/bestsellers/ebooks");
            XDocument xdoc = new XDocument();
            xdoc = XDocument.Load(url);
            // var json = JsonConvert.SerializeXmlNode(xdoc.Descendan);
            var items = (from x in xdoc.Descendants("item")
                select new Feeds
                {
                    Title = x.Element("title").Value,
                    PublishDate = x.Element("pubDate").Value,
                    Description = x.Element("description").Value
                }).ToList();

            return items;
        }
    }
}