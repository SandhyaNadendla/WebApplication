using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddCompany_Click(object sender, EventArgs e)
        {
            NasaFitnessDbDataContext nasaFitnessDbDataContext = new NasaFitnessDbDataContext
            ("Server=tcp:nasafitness.database.windows.net,1433;Initial Catalog=nasafitnessllc;Persist Security Info=False;User ID=dr_nasafitness;Password=Conversion2016;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

            company_detail company_Detail  = new company_detail
            {
                company_name = AddCompanyName.Text,
            };

            nasaFitnessDbDataContext.company_details.InsertOnSubmit(company_Detail);
            nasaFitnessDbDataContext.SubmitChanges();

            nasaFitnessDbDataContext.Dispose();
            Message.Text = "Company added successfully";
            Message.Visible = true;
        }

        protected void AddLocation_Click(object sender, EventArgs e)
        {
            NasaFitnessDbDataContext nasaFitnessDbDataContext = new NasaFitnessDbDataContext
            ("Server=tcp:nasafitness.database.windows.net,1433;Initial Catalog=nasafitnessllc;Persist Security Info=False;User ID=dr_nasafitness;Password=Conversion2016;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

            company_detail company_Detail = new company_detail
            {
                location_name = Location.Text,
            };

            nasaFitnessDbDataContext.company_details.InsertOnSubmit(company_Detail);
            nasaFitnessDbDataContext.SubmitChanges();

            nasaFitnessDbDataContext.Dispose();
            Message.Text = "Company added successfully";
            Message.Visible = true;
        }
    }
}