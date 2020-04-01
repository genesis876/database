<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Corporate.aspx.cs" Inherits="database.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        &nbsp;<asp:Label ID="Label1" runat="server" Text="Coporate Clients"></asp:Label>
        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Cust_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Cust_ID" HeaderText="Cust_ID" ReadOnly="True" SortExpression="Cust_ID" />
                <asp:BoundField DataField="num_of_employees" HeaderText="num_of_employees" SortExpression="num_of_employees" />
                <asp:BoundField DataField="primary_contact" HeaderText="primary_contact" SortExpression="primary_contact" />
                <asp:BoundField DataField="industry_category" HeaderText="industry_category" SortExpression="industry_category" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:groupworkConnectionString2 %>" DeleteCommand="DELETE FROM [Corporate] WHERE [Cust_ID] = @Cust_ID" InsertCommand="INSERT INTO [Corporate] ([Cust_ID], [num_of_employees], [primary_contact], [industry_category]) VALUES (@Cust_ID, @num_of_employees, @primary_contact, @industry_category)" SelectCommand="SELECT * FROM [Corporate]" UpdateCommand="UPDATE [Corporate] SET [num_of_employees] = @num_of_employees, [primary_contact] = @primary_contact, [industry_category] = @industry_category WHERE [Cust_ID] = @Cust_ID">
            <DeleteParameters>
                <asp:Parameter Name="Cust_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Cust_ID" Type="Int32" />
                <asp:Parameter Name="num_of_employees" Type="Int32" />
                <asp:Parameter Name="primary_contact" Type="String" />
                <asp:Parameter Name="industry_category" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="num_of_employees" Type="Int32" />
                <asp:Parameter Name="primary_contact" Type="String" />
                <asp:Parameter Name="industry_category" Type="String" />
                <asp:Parameter Name="Cust_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Insert a new record"></asp:Label>
        <br />
        <table class="nav-justified" style="width: 83%; height: 43px" border="1">
            <tr>
                <td>Customer Id</td>
                <td>Number of Employees</td>
                <td>Contact</td>
                <td>Industry category</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            </table>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert " />
        <br />
        <br />
    </div>
</asp:Content>
