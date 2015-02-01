using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Data;
using System.IO;
using System.Drawing;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String id = null;
        String movieName = null;
        for (int i = 0; i < gView1.Rows.Count; i++)
        {
            if (gView1.SelectedIndex == i)
            {            
               id = gView1.Rows[i].Cells[1].Text;
               movieName = gView1.Rows[i].Cells[2].Text;
            }
        }
        Response.Redirect("MovieDetails.aspx?id=" + id + "&name=" + movieName);
    }
}
