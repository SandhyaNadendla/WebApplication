using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Net.Mail;
using System.Net;
using System.Windows;
using System.Web.UI.WebControls;
using System.IO;

namespace WebApplication
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Add Data to Company Details Drop down
            NasaFitnessDbDataContext nasaFitnessDbDataContext = new NasaFitnessDbDataContext
            ("Server=tcp:nasafitness.database.windows.net,1433;Initial Catalog=nasafitnessllc;Persist Security Info=False;User ID=dr_nasafitness;Password=Conversion2016;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

            IList<string> companyDetails=nasaFitnessDbDataContext.company_details.Select(m => m.company_name).Distinct().ToList<string>();
            foreach(var company in companyDetails)
            {
                CompanyName.Items.Add(company);
            }

            IList<string> locationDetails = nasaFitnessDbDataContext.company_details.Select(m => m.location_name).Distinct().ToList<string>();
            foreach (var location in locationDetails)
            {
                CompanyLocation.Items.Add(location);
            }
            nasaFitnessDbDataContext.Dispose();
        }

        protected void AddAdminDetails_Click(object sender, EventArgs e)
        {
            try
            {
                string RandomPassword = Path.GetRandomFileName();
                RandomPassword = RandomPassword.Replace(".", "");

                NasaFitnessDbDataContext nasaFitnessDbDataContext = new NasaFitnessDbDataContext
                ("Server=tcp:nasafitness.database.windows.net,1433;Initial Catalog=nasafitnessllc;Persist Security Info=False;User ID=dr_nasafitness;Password=Conversion2016;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                if(AccessLevel.SelectedValue.Equals("High"))
                {
                    nasafitness nasafitness = new nasafitness
                    {
                        user_name = AdminName.Text,
                        company_name = CompanyName.Text,
                        position = Position.SelectedValue,
                        email_id = EmailID.Text,
                        pass_word = RandomPassword,
                        administrator = 0,
                        company_location = CompanyLocation.Text,
                        access_level=2
                    };
                    nasaFitnessDbDataContext.nasafitnesses.InsertOnSubmit(nasafitness);
                }
                if (AccessLevel.SelectedValue.Equals("Medium"))
                {
                    nasafitness nasafitness = new nasafitness
                    {
                        user_name = AdminName.Text,
                        company_name = CompanyName.Text,
                        position = Position.SelectedValue,
                        email_id = EmailID.Text,
                        pass_word = RandomPassword,
                        administrator = 0,
                        company_location = CompanyLocation.Text,
                        access_level=1
                    };
                    nasaFitnessDbDataContext.nasafitnesses.InsertOnSubmit(nasafitness);
                }
                if (AccessLevel.SelectedValue.Equals("Low"))
                {
                    nasafitness nasafitness = new nasafitness
                    {
                        user_name = AdminName.Text,
                        company_name = CompanyName.Text,
                        position = Position.SelectedValue,
                        email_id = EmailID.Text,
                        pass_word = RandomPassword,
                        administrator = 0,
                        company_location = CompanyLocation.Text,
                        access_level=0
                    };
                    nasaFitnessDbDataContext.nasafitnesses.InsertOnSubmit(nasafitness);
                }
                

                company_detail company_Detail = new company_detail
                {
                    company_name = CompanyName.Text,
                    location_name = CompanyLocation.Text
                };

                nasaFitnessDbDataContext.company_details.InsertOnSubmit(company_Detail);
                
                nasaFitnessDbDataContext.SubmitChanges();
                nasaFitnessDbDataContext.Dispose();

                // Creates a MailMessage
                MailMessage mail = new MailMessage("nasafitnesscenter@gmail.com", EmailID.Text);
                mail.Subject = "Auto Generated Reply from NasaFitness";
                mail.Body = $"You are now successfully added as Admin with USERNAME:" + AdminName.Text + " and PASSWORD : "+RandomPassword;

                // Username and Password of Sender
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.Credentials = new NetworkCredential("nasafitnesscenter@gmail.com", "nasa123456");
                smtpClient.EnableSsl = true;
                smtpClient.Send(mail);

                AdminDetailsMessage.Visible = true;
            }
            catch (Exception ex)
            {

            }
        }
    }
}