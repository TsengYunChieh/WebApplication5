using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication5
{
    public partial class Select : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private DataTable searchAllData()
        {
            //string conStr = ConfigurationManager.ConnectionStrings["SampleConnectionString"].ConnectionString;
            string conStr = "Data Source=MSI\\MSSQL2019;Initial Catalog=SellSystem;Integrated Security=True";
            string commandText = "SELECT * FROM M;";
            DataTable dt = new DataTable();
            SqlConnection connection = new SqlConnection(conStr);
            SqlDataAdapter adapter = new SqlDataAdapter(commandText,connection);
            adapter.Fill(dt);
            return dt;
        }

        private DataTable searchData(string colName, string condition, string content)
        {
            //string conStr = ConfigurationManager.ConnectionStrings["SampleConnectionString"].ConnectionString;
            string conStr = "Data Source=MSI\\MSSQL2019;Initial Catalog=SellSystem;Integrated Security=True";
            string commandText = "SELECT * FROM M WHERE " + colName + condition + "'" + content + "';";

            DataTable dt = new DataTable();
            try
            {
                using(SqlConnection connection = new SqlConnection(conStr))
                {
                    SqlDataAdapter adapter = new SqlDataAdapter(commandText, connection);
                    adapter.Fill(dt);
                    return dt;
                }
            }
            catch(SqlException ex)
            {
                return null;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(this.RadioButton1.Checked)
            {
                this.GridView1.DataSource = searchAllData();
                this.GridView1.DataBind();
                this.GridView1.Visible = true;
            }
            else if(this.RadioButton2.Checked)
            {
                string name = this.TextBox1.Text;
                this.GridView1.DataSource = searchData("MNAME", "=", name);
                this.GridView1.DataBind();
                this.GridView1.Visible = true;
            }
            else
            {
                string pname = this.TextBox2.Text;
                this.GridView1.DataSource = searchData("PID", "=", pname);
                this.GridView1.DataBind();
                this.GridView1.Visible = true;
            }
        }
    }
}