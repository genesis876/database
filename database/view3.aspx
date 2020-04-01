<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="view3.aspx.cs" Inherits="database.view3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
         <br />
         Amount of each delivery time category used by clients<br />
         <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="delivery_time_cate" HeaderText="delivery_time_cate" SortExpression="delivery_time_cate" />
                <asp:BoundField DataField="numclient" HeaderText="numclient" SortExpression="numclient" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:groupworkConnectionString %>" SelectCommand="SELECT * FROM [categoryusage]"></asp:SqlDataSource>
    </div>
</asp:Content>
