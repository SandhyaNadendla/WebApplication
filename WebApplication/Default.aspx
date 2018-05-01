<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication._Default" %>
<asp:Content ID="DefaultContent" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
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
                        <%--<li><a runat="server" href="~/AssignRole">Assign Role</a></li>
                        <li><a runat="server" href="~/AdminDetails">Admin Details</a></li>
                        <li><a runat="server" href="~/CompanyDetails">Company Details</a></li>
                        <li><a runat="server" href="~/ViewReports">View Reports</a></li>
                   --%> </ul>
                </div>
            </div>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Welcome Admin</h1>
    <asp:Panel ID="LoginPanel" HorizontalAlign="Center" runat="server">
        <asp:Table ID="LoginTable" runat="server">
            <asp:TableHeaderRow>
                <asp:TableCell>
                    <h2>Login Details</h2>
                </asp:TableCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell>User Name</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Password</asp:TableCell>
                <asp:TableCell>
                    <input Id="AdminPassword" type="password" value="Password" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">
                    <asp:Button ID="AdminSubmit" runat="server" Text="Login" OnClick="AdminSubmit_Click" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Message" runat="server" ></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table> 
    </asp:Panel>
    </asp:Content>
