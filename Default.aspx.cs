using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string email = subscribe.Value;
            var visitor = new Visitor { Email = email, Ip = Request.UserHostAddress };

            // save the email
            WriteXML(visitor);
        }
        else
        {
            var webClient = new WebClient();
            var xmlData = webClient.DownloadString("http://bing.com/HPImageArchive.aspx?format=json&idx=5&n=5&mkt=en-US.xml");
            File.WriteAllText(Path.Combine(Server.MapPath("~/data"), "bing.xml"), xmlData);
        }
    }
   
    public void WriteXML(Visitor visitor)
    {
        var ds = new DataSet();
        DataTable dt = CreateVisitorsTable();
        string filePath = Path.Combine(Server.MapPath("~/App_Data"), "visitors.xml");
       
        if(!File.Exists(filePath))
        {
            // create xml dile
            dt.WriteXml(filePath);
        }
      
        dt.ReadXml(filePath);

        var dr = dt.NewRow();
        dr["email"] = visitor.Email;
        dr["date"] = visitor.CreateDate;
        dr["ip"] = visitor.Ip;
        dt.Rows.Add(dr);
        dt.WriteXml(filePath);
    }

    DataTable CreateVisitorsTable()
    {
        DataTable dt = new DataTable("visitor");
        dt.Columns.Add("email", typeof(string));
        dt.Columns.Add("date", typeof(DateTime));
        dt.Columns.Add("ip", typeof(string));
        return dt;
    }

    public class Visitor
    {
        public Visitor()
        {
            this.CreateDate = DateTime.UtcNow;
        }
        public String Email { get; set; }
        public String Ip { get; set; }
        public DateTime CreateDate { get; set; }
    }

}