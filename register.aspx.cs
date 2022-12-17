using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace craftquirks
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection Conn = new SqlConnection("Data Source=LAPTOP-0I8JE90S\\SQLEXPRESS; Initial Catalog = craftquirks;Integrated Security=True");

            string query;
            query = "INSERT INTO user_details(username, email, password, contact,type) values('" + username.Text + "','" + email.Text + "','" + pass.Text + "','" + contact.Text + "','U')";
            SqlCommand sc = new SqlCommand(query, Conn);

            try
            {
                Conn.Open();
                sc.ExecuteNonQuery();
                Response.Redirect("Homepage.aspx");
               
            }
            catch (Exception er)
            {
                Label1.Text = er.Message;
            }
            finally
            {
                Conn.Close();
            }

        }
    }
}