<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AssignRole.aspx.cs" Inherits="WebApplication.AssignRole" %>

<asp:Content ID="AssignRoleContent" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
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
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="AssignRolePanel" runat="server">
        <h2>Assign Role</h2>
        <asp:Table ID="AssignRoleTable" class="AssignRoleTable" runat="server" width="100%" >
            <asp:TableRow >
                <asp:TableCell>
                    <asp:Button ID="AddAdmin" runat="server" Text="Add Admin" OnClick="AddAdmin_Click" /> 
                </asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                <asp:TableCell >
                    <asp:Button ID="AddCompany" runat="server" Text="Add Company" OnClick="AddCompany_Click" /> 
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell >
                    <asp:Button ID="ViewReports" runat="server" Text="View Reports" OnClick="ViewReports_Click" /> 
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </asp:Panel>
</asp:Content>
