<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="view2.aspx.cs" Inherits="database.view2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
         <br />
         <asp:Label ID="Label1" runat="server" Text="Amount of deliveries by each mail man"></asp:Label>
         <br />
         <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="emp_id" HeaderText="emp_id" SortExpression="emp_id" />
            <asp:BoundField DataField="TotalMail" HeaderText="TotalMail" SortExpression="TotalMail" />
            <asp:BoundField DataField="TotalPackage" HeaderText="TotalPackage" SortExpression="TotalPackage" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:groupworkConnectionString %>" SelectCommand="SELECT * FROM [Deliveries]"></asp:SqlDataSource>

    </div>
</asp:Content>
