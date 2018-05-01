<%@ Page Title="CompanyDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CompanyDetails.aspx.cs" Inherits="WebApplication.Contact" %>
<asp:Content ID="CompanyDetailsContent" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" href="~/">Nasa Fitness Center</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/AssignRole">Assign Role</a></li>
                        <li><a runat="server" href="~/AdminDetails">Admin Details</a></li>
                        <li><a runat="server" href="~/CompanyDetails">Company Details</a></li>
                        <li><a runat="server" href="~/ViewReports">View Reports</a></li>
                        <li><a runat="server" href="~/ChangePassword">Change PassWord</a></li>
                        <li><a runat="server" href="~/Default">Log Out</a></li>
                    </ul>
                </div>
            </div>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="CompanyPanel" runat="server">
            <h2>Company Details</h2>
        <asp:Table ID="CompanyDetailsTable" runat="server">
            <asp:TableRow>
                <asp:TableCell>Company Name</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="AddCompanyName" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Location</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="Location" runat="server">Location</asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell >
                    <asp:Button ID="AddCompany" runat="server" Text="Add Company" OnClick="AddCompany_Click" />
                </asp:TableCell>
                <asp:TableCell >
                    <asp:Button ID="AddLocation" runat="server" Text="Add Location" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">
                    <asp:Label ID="Message" runat="server" ></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
          </asp:Table>
    </asp:Panel> 
</asp:Content>
