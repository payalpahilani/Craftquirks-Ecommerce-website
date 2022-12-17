using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace craftquirks
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string uname = Session["USERNAME"].ToString();
                HyperLink2.Text = "Logout";
                HyperLink2.NavigateUrl = "logout.aspx";
            }
            catch {
                
            }
        }

 
    }
}