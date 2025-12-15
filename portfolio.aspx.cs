using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class portfolio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s= "insert into info values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"')";
            datacon dc = new datacon();
            dc.SetData(s);
            TextBox1.Text = TextBox2.Text = TextBox3.Text = string.Empty;
            Response.Write("<script>alert('Data Submited')</script>");
        }
    }
}