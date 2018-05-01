using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class ViewReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (ReportUpload.HasFile)
            {
                string savePath = null;
                // Specify the path to save the uploaded file to.
                if (EmployeeReportsCheck.Checked)
                {
                    savePath = "C:\\Users\\chinnu\\Desktop\\old\\WebApplication\\WebApplication\\Content\\EmployeeReports\\";
                }
                if (CompanyReportsCheck.Checked)
                {
                    savePath = "C:\\Users\\chinnu\\Desktop\\old\\WebApplication\\WebApplication\\Content\\CompanyReports\\";
                }
                if (FinanceReportsCheck.Checked)
                {
                    savePath = "C:\\Users\\chinnu\\Desktop\\old\\WebApplication\\WebApplication\\Content\\FinanceReports\\";
                }

                // Get the name of the file to upload.
                string fileName = ReportUpload.FileName;

                // Create the path and file name to check for duplicates.
                string pathToCheck = savePath + fileName;

                // Create a temporary file name to use for checking duplicates.
                string tempfileName = "";

                // Check to see if a file already exists with the
                // same name as the file to upload.        
                if (System.IO.File.Exists(pathToCheck))
                {
                    int counter = 2;
                    while (System.IO.File.Exists(pathToCheck))
                    {
                        // if a file with this name already exists,
                        // prefix the filename with a number.
                        tempfileName = fileName + counter.ToString();
                        pathToCheck = savePath + tempfileName;
                        counter++;
                    }

                    fileName = tempfileName;

                    // Notify the user that the file name was changed.
                    Message.Text = "A file with the same name already exists.Your file was saved as " + fileName;
                }
                else
                {
                    // Notify the user that the file was saved successfully.
                    //UploadStatusLabel.Text = "Your file was uploaded successfully.";
                    Response.Write("<script>alert('Your file was uploaded successfully.')</script>");
                }

                // Append the name of the file to upload to the path.
                savePath += fileName;

                // Call the SaveAs method to save the uploaded
                // file to the specified directory.
                ReportUpload.SaveAs(savePath);
            }
            else
            {
                Response.Write("<script>alert('You did not specify a file to upload')</script>");
            }
        }
        protected void DownloadFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();
        }
        protected void DeleteFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            File.Delete(filePath);
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        protected void FinanceReports_Click(object sender, EventArgs e)
        {
            NasaFitnessDbDataContext nasaFitnessDbDataContext = new NasaFitnessDbDataContext
            ("Server=tcp:nasafitness.database.windows.net,1433;Initial Catalog=nasafitnessllc;Persist Security Info=False;User ID=dr_nasafitness;Password=Conversion2016;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

            var user = Session["username"].ToString();

            var accesslevel = nasaFitnessDbDataContext.nasafitnesses.Where(m => m.user_name == user).Select(m => m.access_level).SingleOrDefault();

            if (accesslevel == 2)
            {
                string[] filePaths = Directory.GetFiles("C:\\Users\\chinnu\\Desktop\\old\\WebApplication\\WebApplication\\Content\\FinanceReports\\");
                List<ListItem> files = new List<ListItem>();
                foreach (string filePath in filePaths)
                {
                    files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                }
                GridView1.DataSource = files;
                GridView1.DataBind();
            }
        }
        protected void EmployeeReports_Click(object sender, EventArgs e)
        {
            string[] filePaths = Directory.GetFiles("C:\\Users\\chinnu\\Desktop\\old\\WebApplication\\WebApplication\\Content\\EmployeeReports\\");
            List<ListItem> files = new List<ListItem>();
            foreach (string filePath in filePaths)
            {
                files.Add(new ListItem(Path.GetFileName(filePath), filePath));
            }
            GridView1.DataSource = files;
            GridView1.DataBind();
        }
        protected void CompanyReports_Click(object sender, EventArgs e)
        {
            NasaFitnessDbDataContext nasaFitnessDbDataContext = new NasaFitnessDbDataContext
           ("Server=tcp:nasafitness.database.windows.net,1433;Initial Catalog=nasafitnessllc;Persist Security Info=False;User ID=dr_nasafitness;Password=Conversion2016;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

            var user = Session["username"].ToString();

            var accesslevel = nasaFitnessDbDataContext.nasafitnesses.Where(m => m.user_name == user).Select(m => m.access_level).SingleOrDefault();

            if (accesslevel == 2 || accesslevel == 1)
            {
                string[] filePaths = Directory.GetFiles("C:\\Users\\chinnu\\Desktop\\old\\WebApplication\\WebApplication\\Content\\CompanyReports\\");
                List<ListItem> files = new List<ListItem>();
                foreach (string filePath in filePaths)
                {
                    files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                }
                GridView1.DataSource = files;
                GridView1.DataBind();
            }
        }
    }
}