using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Reflection;

public partial class About : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.QueryString["name"];
        String validId = Request.QueryString["id"];
        bool exists = false;


        string[] abc = Directory.GetFiles(Server.MapPath("posters"));
        foreach (string a in abc)
        {
            String path = Path.GetFileName(a);
            if ((validId + ".jpg").Equals(path))
            {
                Image1.ImageUrl = "posters/" + validId + ".jpg";
                exists = true;
                break;
            }
        }
        if (!exists) Image1.ImageUrl = "posters/empty.png";
        Label2.Text = "";
    }
}
