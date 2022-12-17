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
    public partial class cart : System.Web.UI.Page
    {
            string s, t;
            public string[] a = new string[6];
            public DataTable dt = new DataTable();
            public int subtotal1, total1= 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            dt.Columns.AddRange(new DataColumn[5] {  new DataColumn("p_name"), new DataColumn("p_price"), new DataColumn("p_quan"), new DataColumn("p_img"), new DataColumn("p_id") });

            if (Request.Cookies["aa"] != null)
            {
                s = Convert.ToString(Request.Cookies["aa"].Value);
                string[] strArr = s.Split('|');

                for (int i = 0; i < strArr.Length; i++)
                {
                    t = Convert.ToString(strArr[i].ToString());
                    string[] strArr1 = t.Split(',');
                    for (int j = 0; j < strArr1.Length; j++)
                    {
                        a[j] = strArr1[j].ToString();
                    }

                    try
                    {
                        subtotal1 = subtotal1 + Convert.ToInt32(a[1].ToString());                        
                        dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(), a[3].ToString(), i.ToString());
                        System.Diagnostics.Debug.WriteLine(subtotal1.ToString());
                    }
                    catch (Exception a) {
                
                    }
                }

                d1.DataSource = dt;
                d1.DataBind();
            }
            subtotal.Text = subtotal1.ToString();
            if (RadioButtonList1.SelectedValue == "a")
            {
                total1 = subtotal1 + 499;
                shipping.Text = "₹499";
                total.Text = total1.ToString();
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Cookies["subtotal"].Value = subtotal1.ToString();
            if (shipping.Text == "₹499")
            {
                Response.Cookies["shipping"].Value = "Paid";
            }
            else if (shipping.Text == "FREE")
            {
                Response.Cookies["shipping"].Value = "FREE";
            }
            Response.Cookies["total"].Value = total.Text.ToString();

            Response.Redirect("checkout.aspx");
        }

        protected void IndexChanged(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("help");
            subtotal.Text = subtotal1.ToString();
            if (RadioButtonList1.SelectedValue == "a")
            {
                total1 = subtotal1 + 499;
                shipping.Text = "₹499";
                total.Text = total1.ToString();
            }
            else if(RadioButtonList1.SelectedValue == "b") {
                total1 = subtotal1 + 0;
                shipping.Text = "FREE";
                total.Text = total1.ToString();
            }
            Request.Cookies["subtotal"].Expires = DateTime.Now.AddDays(-1);
            Request.Cookies["shipping"].Expires = DateTime.Now.AddDays(-1);
            Request.Cookies["total"].Expires = DateTime.Now.AddDays(-1);
        }

        protected void Continue_Shopping(object sender, EventArgs e)
            {

            Response.Redirect("Homepage.aspx");

            }
            


    }
}