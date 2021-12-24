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
    public partial class Insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int amount = 0;

            string conStr = "Data Source=MSI\\MSSQL2019;Initial Catalog=SellSystem;Integrated Security=True";
            SqlCommand command = new SqlCommand();
            SqlConnection conn = new SqlConnection(conStr);

            string MID = this.TextBox1.Text;
            string MNAME = this.TextBox2.Text;
            int TEL = Convert.ToInt32(this.TextBox3.Text);
            string EMAIL = this.TextBox4.Text;
            string PID = this.TextBox5.Text;

            command.CommandText = "INSERT INTO M(MID,MNAME,TEL,EMAIL,PID) VALUES(@MID,@MNAME,@TEL,@EMAIL,@PID)";
            command.Parameters.Add("@MID",SqlDbType.VarChar).Value = MID;
            command.Parameters.Add("@MNAME", SqlDbType.VarChar).Value = MNAME;
            command.Parameters.Add("@TEL", SqlDbType.VarChar).Value = TEL;
            command.Parameters.Add("@EMAIL", SqlDbType.VarChar).Value = EMAIL;
            command.Parameters.Add("@PID", SqlDbType.VarChar).Value = PID;
            command.Connection = conn;

            try
            {
                conn.Open();
                amount = command.ExecuteNonQuery();
                conn.Close();
                if(amount > 0)
                {
                    Response.Write("<script>alert(\"新增成功\");</script>");
                }
                else
                {
                    Response.Write("<script>alert(\"新增失敗\");</script>");
                }
            }
            catch(SqlException ex)
            {
                Response.Write("<script>alert(\"發生問題\n原因:"+ex.Message+"\");</script>");
            }
        }
    }
}