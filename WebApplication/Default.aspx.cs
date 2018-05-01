using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.Linq;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AdminSubmit_Click(object sender, EventArgs e)
        {
            NasaFitnessDbDataContext nasaFitnessDbDataContext = new NasaFitnessDbDataContext
            ("Server=tcp:nasafitness.database.windows.net,1433;Initial Catalog=nasafitnessllc;Persist Security Info=False;User ID=dr_nasafitness;Password=Conversion2016;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

            var administratorvalue = nasaFitnessDbDataContext.nasafitnesses.Where(m => m.user_name == UserName.Text && m.pass_word == AdminPassword.Value).Select(m => m.administrator).SingleOrDefault();

            Session.Add("adminuser", administratorvalue);
            Session.Add("username", UserName.Text);
            if (administratorvalue is null)
            {
                Response.Write("<script>alert('Invalid Username or Password')</script>");
            }
            else
            {
                Response.Redirect("AssignRole.aspx?Admin=" + administratorvalue + "&?LoginUser=" + UserName.Text);
            }

            nasaFitnessDbDataContext.Dispose();
        }
    }
}