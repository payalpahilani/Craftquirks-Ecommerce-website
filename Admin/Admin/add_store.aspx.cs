using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace craftquirks.Admin
{
    public partial class add_store : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = LAPTOP-0I8JE90S\\SQLEXPRESS; Initial Catalog = craftquirks; Integrated Security = True");
        String a, b;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void add_img_Click(object sender, EventArgs e)
        {
            a = Class1.GetRandomPassword(10).ToString();
        }

        protected void add_to_Store(object sender, EventArgs e)
        {
            a = Class1.GetRandomPassword(10).ToString();
            simg1.SaveAs(Request.PhysicalApplicationPath + "ProductImages/" + a + simg1.FileName.ToString());
            b = "ProductImages/" + a + simg1.FileName.ToString();
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into store values('" + pname1.Text + "','" + price1.Text + "','" + pdesc1.Text + "','" + pquan.Text + "','" + b.ToString() + "','" + scat1.SelectedValue.ToString() + "')";
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}