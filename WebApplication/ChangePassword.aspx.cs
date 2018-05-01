using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ChangePasswordButton_Click(object sender, EventArgs e)
        {
            var username = Session["username"].ToString();
            NasaFitnessDbDataContext nasaFitnessDbDataContext = new NasaFitnessDbDataContext
            ("Server=tcp:nasafitness.database.windows.net,1433;Initial Catalog=nasafitnessllc;Persist Security Info=False;User ID=dr_nasafitness;Password=Conversion2016;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

            var entity = nasaFitnessDbDataContext.nasafitnesses.Where(m => m.user_name == username).SingleOrDefault();

            if(entity is null)
            {
                Response.Write("<script>alert('User does not Exist.')</script>");
            }
            else
            {
                if(entity.pass_word.Equals(OldPassword.Text))
                {
                    if(ConfirmPassword.Text.Equals(CurrentPassword.Text))
                    {
                        nasafitness result = (from p in nasaFitnessDbDataContext.nasafitnesses
                                         where p.pass_word == OldPassword.Text
                                         select p).SingleOrDefault();

                        result.pass_word = CurrentPassword.Text;
                        nasaFitnessDbDataContext.SubmitChanges();
                        Response.Write("<script>alert('Password Changes Successfully.')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Old and New Password does not Match.')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Old Password is Invalid.')</script>");
                }
            }

            nasaFitnessDbDataContext.Dispose();
        }
    }
}