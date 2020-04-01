<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="view1.aspx.cs" Inherits="database.view1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
         <br />
         <asp:Label ID="Label1" runat="server" Text="Successful Deliveries"></asp:Label>
         &nbsp;by each unit<br />
         <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="delivery_unit" HeaderText="delivery_unit" SortExpression="delivery_unit" />
            <asp:BoundField DataField="success" HeaderText="success" SortExpression="success" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:groupworkConnectionString %>" SelectCommand="SELECT * FROM [deliverysuccess]"></asp:SqlDataSource>

         </div>
</asp:Content>
