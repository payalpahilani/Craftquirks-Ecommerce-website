using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace craftquirks
{
    public partial class checkout : System.Web.UI.Page
    {
        String[] row1 = new String[5];
        public string Message { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            int i = 0;
            try
            {
                if (Request.Cookies["subtotal"].Value != null)
                {
                    Label1.Text = Request.Cookies["subtotal"].Value.ToString();
                    if (Request.Cookies["shipping"].Value.ToString() == "Paid")
                    {
                        Label2.Text = "₹499";
                    }
                    else if (Request.Cookies["shipping"].Value.ToString() == "FREE")
                    {
                        Label2.Text = "FREE";
                    }
                    Label3.Text = Request.Cookies["total"].Value.ToString();
                    Request.Cookies["subtotal"].Expires = DateTime.Now.AddDays(-1);
                    Request.Cookies["shipping"].Expires = DateTime.Now.AddDays(-1);
                    Request.Cookies["total"].Expires = DateTime.Now.AddDays(-1);
                }
            }
            catch (Exception se) { }
            
        }
        protected void ProcessPayment_Click(object sender, EventArgs e)
        {
            try
            {
                string uname = Session["USERNAME"].ToString();
                if(uname != null)
                {
                    System.Diagnostics.Debug.WriteLine("hellpp please helppp");
                }
            }
            catch
            {

            }
        }
    }
}