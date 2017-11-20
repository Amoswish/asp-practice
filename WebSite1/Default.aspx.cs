using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    //连接字符串 
    //"<%$ ConnectionStrings:data1ConnectionString1 %>" DeleteCommand="DELETE FROM [course] WHERE [cno] = @cno" InsertCommand="INSERT INTO [course] ([cno], [cname], [cpno], [credit], [teacher]) VALUES (@cno, @cname, @cpno, @credit, @teacher)" ProviderName="<%$ ConnectionStrings:data1ConnectionString1.ProviderName %>" SelectCommand="SELECT [cno], [cname], [cpno], [credit], [teacher] FROM [course]" UpdateCommand="UPDATE [course] SET [cname] = @cname, [cpno] = @cpno, [credit] = @credit, [teacher] = @teacher WHERE [cno] = @cno">
    protected void Page_Load(object sender, EventArgs e)
    {
        string aconnectionstring =  "Data Source=LENOVO-PC\\SQLEXPRESS;Initial Catalog=data1;Integrated Security=True";
        SqlConnection connection = new SqlConnection(aconnectionstring);
        string sql = "select * from course";
        SqlDataReader reader;

        try
        {
            SqlCommand test = new SqlCommand(sql,connection);
            connection.Open();
            reader = test.ExecuteReader();

            while (reader.Read()) {
                Response.Write(reader.GetString(0));
            }
            reader.Close();
            connection.Close();
        }
        catch
        {

        }
        finally {
            connection.Close();
        }
                 Response.Write("sss");
    }
}