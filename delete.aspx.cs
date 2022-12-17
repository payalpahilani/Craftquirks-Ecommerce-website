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
    public partial class delete : System.Web.UI.Page
    {
        string a, b;
        string[] c = new string[6];
        int id;
        string p_name, p_price, p_quan, p_img,p_id;
        int count = 0;



        protected void Page_Load(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine(Request.Cookies["aa"].Value.ToString());
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            System.Diagnostics.Debug.WriteLine(id);
            DataTable dt = new DataTable();
            dt.Rows.Clear();

            dt.Columns.AddRange(new DataColumn[5] { new DataColumn("p_name"), new DataColumn("p_price"), new DataColumn("p_quan"), new DataColumn("p_img"), new DataColumn("p_id") });
            if (Request.Cookies["aa"] != null)
            {
                a = Convert.ToString(Request.Cookies["aa"].Value);
                string[] str = a.Split('|');
                for (int i = 0; i < str.Length; i++)
                {
                    b = Convert.ToString(str[i].ToString());
                    String[] strr1 = b.Split(',');
                    for (int j = 0; j < strr1.Length; j++)
                    {
                        c[j] = strr1[j].ToString();
                    }
                    dt.Rows.Add(c[0].ToString(), c[1].ToString(), c[2].ToString(), c[3].ToString(), i.ToString());

                }
            }
                dt.Rows.RemoveAt(id);
            System.Diagnostics.Debug.WriteLine(dt.Rows);
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-1);

            foreach (DataRow dr in dt.Rows)
                {
                    p_name = dr["p_name"].ToString();
                    p_price = dr["p_price"].ToString();
                    p_quan = dr["p_quan"].ToString();
                    p_img = dr["p_img"].ToString();
                p_id = dr["p_id"].ToString();
                

                    count = count + 1;

                    if (count == 1)
                    {
                        Response.Cookies["aa"].Value = p_name.ToString() + "," + p_price.ToString() + "," + p_quan.ToString() + "," + p_img.ToString()+","+p_id.ToString();
                        Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
                    }
                    else
                    {
                        Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + p_name.ToString() + "," + p_price.ToString() + "," + p_quan.ToString() + "," + p_img.ToString() + "," + p_id.ToString();
                        Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
                    }
                }

                Response.Redirect("cart.aspx");
            }

        }
    }

