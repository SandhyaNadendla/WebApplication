using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class AssignRole : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            var IsAdmin = Session["adminuser"];

            if (Request.QueryString["Admin"] == "1" && IsAdmin.Equals(1))
                {
                    AddCompany.Visible = true;
                }
                else
                {
                    AddCompany.Visible = false;
                }
        }

        protected void AddAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDetails.aspx");
        }

        protected void AddCompany_Click(object sender, EventArgs e)
        {
            Response.Redirect("CompanyDetails.aspx");
        }

        protected void ViewReports_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewReports.aspx");
        }
    }
}