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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UNAME"] != null && Request.Cookies["PWD"] != null)
                {
                    user.Text = Request.Cookies["UNAME"].Value;
                    txtPassword.Attributes["value"] = Request.Cookies["PWD"].Value;
                    CheckBox1.Checked = true;
                }
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection Conn = new SqlConnection("Data Source=LAPTOP-0I8JE90S\\SQLEXPRESS; Initial Catalog = craftquirks;Integrated Security=True");
            
            {

                SqlCommand cmd = new SqlCommand("select * from user_details where username='" + user.Text + "' and password='" + txtPassword.Text + "'",Conn);
                Conn.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["UNAME"].Value = user.Text;
                        Response.Cookies["PWD"].Value = txtPassword.Text;

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);
                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                    }
                    string Utype;
                    Utype = dt.Rows[0][5].ToString().Trim();

                    if (Utype == "U")
                    {
                        Session["USERNAME"] = user.Text;
                        if (Request.QueryString["rurl"] != null)
                        {
                            if (Request.QueryString["rurl"] == "cart")
                            {
                                Response.Redirect("~/cart.aspx.aspx");
                            }
                            
                        }
                        else
                        {
                            Response.Redirect("~/Homepage.aspx");
                        }
                    }
                    if (Utype == "A")
                    {
                        Session["USERNAME"] = user.Text;
                        Response.Redirect("~/Admin/add_products.aspx");
                    }


                }
                else
                {
                    Label3.Text = "Invalid Username or Password !";
                }
            }



        }
    }
}
