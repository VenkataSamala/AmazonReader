using AmazonReader.Models;
using System;
using System.Collections.Generic;
using System.Web.UI;

namespace AmazonReader
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Repeater2.DataSource = EbooksData();
            Repeater2.DataBind();
            Repeater1.DataSource = DvdData();
            Repeater1.DataBind();
        }

        private List<Feeds> DvdData()
        {
            var xml = XMLData.LoadDvdXML();
            return xml;
        }

        private List<Feeds> EbooksData()
        {
            var xml1 = XMLData.LoadEbooksXML();
            return xml1;
        }
    }
}