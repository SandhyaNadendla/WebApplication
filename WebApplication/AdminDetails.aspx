<%@ Page Title="Admin Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication.About" %>
<asp:Content ID="AdminDetailsContent" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
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
    <asp:Panel ID="AdminPanel" runat="server">
        <h2>Admin Details</h2>
        <asp:Table ID="AdminTable" runat="server">
            <asp:TableRow>
                <asp:TableCell>Company Name</asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="CompanyName" runat="server">
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Company Location</asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="CompanyLocation" runat="server">
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Admin Name</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="AdminName" runat="server">Admin Name</asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Email ID</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="EmailID" runat="server">Email ID</asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Position</asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="Position" runat="server">
                        <asp:ListItem Value="Employer_Admin"></asp:ListItem>
                        <asp:ListItem Value="Division Manager"></asp:ListItem>
                        <asp:ListItem Value="Safty Manager"></asp:ListItem>
                        <asp:ListItem Value="Employee"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Access Level</asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="AccessLevel" runat="server">
                        <asp:ListItem Value="High "></asp:ListItem>
                        <asp:ListItem Value="Medium"></asp:ListItem>
                        <asp:ListItem Value="Low"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableFooterRow>
                <asp:TableCell>
                    <asp:Button ID="AddAdminDetails" runat="server" Text="Add" OnClick="AddAdminDetails_Click" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="AdminDetailsMessage" runat="server" Text="Admin Added Successfully" Visible="false"></asp:Label>
                </asp:TableCell>
            </asp:TableFooterRow>
        </asp:Table>
    </asp:Panel>
</asp:Content>
