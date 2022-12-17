using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

namespace craftquirks
{
    public partial class fp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String password;
            String mycon = "Data Source=LAPTOP-0I8JE90S\\SQLEXPRESS; Initial Catalog= craftquirks; Integrated Security=True";
            String myquery = "Select * from user_details where username='" + user.Text + "' and email='" + email.Text + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //Label3.Text = "Data Found";

                password = ds.Tables[0].Rows[0]["password"].ToString();
                sendpassword(password, email.Text);
                Label3.Text = "Your Password Has Been Sent to Registered Email Address. Check Your Mail Inbox";

            }
            else
            {
                Label3.Text = "Your Username is Not Valid or Email Not Registered";

            }
            con.Close();

        }

        private void sendpassword(string password, string text)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("carftshandmade@gmail.com", "1_craftquirks_23");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Forgot Password";
            msg.Body = "Dear " + user.Text + ", Your Password is  " + password + "\n\n\nThanks & Regards\n Craftquirks Team";
            string toaddress = email.Text;
            msg.To.Add(toaddress);
            string fromaddress = "Craftquirks <carftshandmade@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);


            }
            catch
            {
                throw;
            }
        }
    }

}