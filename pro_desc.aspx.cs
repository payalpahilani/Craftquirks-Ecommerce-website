using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace craftquirks
{
    public partial class pro_desc : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = LAPTOP-0I8JE90S\\SQLEXPRESS; Initial Catalog = craftquirks; Integrated Security = True");
        int id;
        string p_name, p_price, p_quan, p_img;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                if (Request.QueryString["id"] == null)
                {
                    Response.Redirect("products.aspx");
                }
                else
                {

                    id = Convert.ToInt32(Request.QueryString["id"].ToString());
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "select * from products where p_id='" + id + "'";
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    d1.DataSource = dt;
                    d1.DataBind();

                    con.Close();
                }

            }
        }
        protected void add_toCart(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from products where p_id='" + id + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                p_name = dr["p_name"].ToString();
                p_price = dr["p_price"].ToString();
               
                p_quan = dr["p_quan"].ToString();
                p_img = dr["p_img"].ToString();
            }
            con.Close();

            if (Convert.ToInt32(1) > 1)
            {

            }
            else
            {

                try
                {
                    if (Request.Cookies["aa"] == null)
                    {
                        Response.Cookies["aa"].Value = p_name.ToString() + "," + p_price.ToString() + ","  + p_quan.ToString() + "," + p_img.ToString();
                        Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
                    }
                    else
                    {
                        Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + p_name.ToString() + "," + p_price.ToString() + ","  + p_quan.ToString() + "," + p_img.ToString();
                        Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);

                    }
                }
                catch (Exception a) {
                   
                 

}

                    Response.Redirect("cart.aspx");

               
            }
        }
    }
}