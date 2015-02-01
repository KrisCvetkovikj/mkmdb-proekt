using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Reflection;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

public partial class About : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            movieDetails();

        }
    }

    protected void movieDetails()
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


        
        SqlConnection kon = new SqlConnection();
        kon.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        String sqlString = "SELECT Synopsis, Director, Actors, Genre FROM Movie";
        SqlCommand cmd = new SqlCommand(sqlString, kon);
        try
        {
            kon.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {

                Label2.Text = "Кратка содржина:<br>" + reader["Synopsis"].ToString();
                lbDirector.Text = "Режисер: " + reader["Director"].ToString();
                String[] list = reader["Genre"].ToString().Split(',');
                StringBuilder sb = new StringBuilder();
                foreach (String s in list)
                {
                    sb.Append(s + ", ");
                }
                lbGenres.Text = "Жанр: " + sb.ToString();

                list = reader["Actors"].ToString().Split(',');
                sb.Clear();
                foreach (String s in list)
                {
                    sb.Append(s + ", ");
                }
                lbActors.Text = "Актери: " + sb.ToString();
            }
            reader.Close();
        }
        catch (Exception err)
        {
            Label2.Text = err.Message;
        }
        finally
        {
            kon.Close();
        }
    }
}
