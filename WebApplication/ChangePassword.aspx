<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="WebApplication.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
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
                        <li><a runat="server" href="~/ChangePassword">Change Password</a></li>
                        <li><a runat="server" href="~/Default">Log Out</a></li>
                    </ul>
                </div>
            </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Change Password</h1>
    <asp:Panel ID="ChangePasswordPanel" runat="server">
        <asp:Table ID="ChangePasswordTable" runat="server">
            <asp:TableRow>
                <asp:TableCell>Old Password</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="OldPassword" runat="server"> </asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Current Password</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="CurrentPassword" runat="server"> </asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Confirm Password</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="ConfirmPassword" runat="server"> </asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">
                    <asp:Button ID="ChangePasswordButton" runat="server" Text="Change Password" Onclick="ChangePasswordButton_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </asp:Panel>
</asp:Content>
