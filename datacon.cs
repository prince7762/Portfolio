using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for datacon
/// </summary>
public class datacon
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    public datacon()
    {
        con = new SqlConnection(@"Data Source=DESKTOP-25HCAT1;Initial Catalog=Portfolio_data;Integrated Security=True");
        con.Open();
    }
    public void SetData(string s)
    {
        cmd = new SqlCommand(s, con);
        cmd.ExecuteNonQuery();
    }
    public DataSet GetData(string s)
    {
        da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }
}