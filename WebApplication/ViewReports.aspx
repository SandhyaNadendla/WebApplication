<%@ Page Title="View Reports" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewReports.aspx.cs" Inherits="WebApplication.ViewReports" %>
<asp:Content ID="ViewReportsContent" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
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
    <asp:Panel ID="ViewReportsPanel" runat="server">
            <h2>View Reports</h2>
        <asp:Table ID="ViewReportsTable" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:CheckBox ID="FinanceReportsCheck" runat="server" />
                    <asp:Label ID="FinanceLabel" runat="server" Text="FinanceReport"></asp:Label>
                    <br />
                    <asp:CheckBox ID="EmployeeReportsCheck" runat="server" />
                    <asp:Label ID="EmployeeLabel" runat="server" Text="EmployeeReport"></asp:Label>
                    <br />
                    <asp:CheckBox ID="CompanyReportsCheck" runat="server" />
                    <asp:Label ID="CompanyLabel" runat="server" Text="CompanyReport"></asp:Label>
                    <br />
                    <br />
                    <asp:FileUpload ID="ReportUpload" runat="server" />
                    <asp:Button ID="UploadButton" runat="server" Text="Upload" OnClick="UploadButton_Click" />
                    <br />
                    <asp:Label ID="Message" runat="server" Text=""></asp:Label>
                </asp:TableCell>
                <asp:TableCell>         
                    <asp:Button ID="FinanceReports" runat="server" Text="Finance Reports" OnClick="FinanceReports_Click" />
                    <asp:Button ID="EmployeeReports" runat="server" Text="Employee Reports" OnClick="EmployeeReports_Click" />
                    <asp:Button ID="CompanyReports" runat="server" Text="Company Reports"  OnClick="CompanyReports_Click"/>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" EmptyDataText = "No files uploaded" BorderStyle="Solid" BorderWidth="5px" BorderColor="#33CC33" GridLines="Both" CellSpacing="5" Width="100%">
            <Columns>
                <asp:BoundField DataField="Text" HeaderText="File Name" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lnkDownload" Text = "Download" CommandArgument = '<%# Eval("Value") %>' runat="server" OnClick = "DownloadFile"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID = "lnkDelete" Text = "Delete" CommandArgument = '<%# Eval("Value") %>' runat = "server" OnClick = "DeleteFile" />
            </ItemTemplate>
        </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </asp:Panel>
</asp:Content>
