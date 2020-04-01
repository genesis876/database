<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Postman.aspx.cs" Inherits="database.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
         <br />
         <asp:Label ID="Label1" runat="server" Text="Postmen"></asp:Label>
         <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="emp_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="emp_ID" HeaderText="emp_ID" ReadOnly="True" SortExpression="emp_ID" />
                <asp:BoundField DataField="Delivery_unit" HeaderText="Delivery_unit" SortExpression="Delivery_unit" />
                <asp:BoundField DataField="supervisor" HeaderText="supervisor" SortExpression="supervisor" />
            </Columns>
        </asp:GridView>
         <br />
         <br />
         <asp:Label ID="Label2" runat="server" Text="Insert an item"></asp:Label>
         <table class="nav-justified" style="width: 76%; height: 64px">
             <tr>
                 <td>Employee ID</td>
                 <td>Delivery Units</td>
                 <td>Supervisor</td>
             </tr>
             <tr>
                 <td>
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 </td>
                 <td>
                     <asp:DropDownList ID="DropDownList1" runat="server">
                         <asp:ListItem>Ludies</asp:ListItem>
                         <asp:ListItem>Catalans</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td>
                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 </td>
             </tr>
         </table>
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
         <br />
         <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:groupworkConnectionString %>" DeleteCommand="DELETE FROM [Postman] WHERE [emp_ID] = @emp_ID" InsertCommand="INSERT INTO [Postman] ([emp_ID], [Delivery_unit], [supervisor]) VALUES (@emp_ID, @Delivery_unit, @supervisor)" SelectCommand="SELECT * FROM [Postman]" UpdateCommand="UPDATE [Postman] SET [Delivery_unit] = @Delivery_unit, [supervisor] = @supervisor WHERE [emp_ID] = @emp_ID">
            <DeleteParameters>
                <asp:Parameter Name="emp_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="emp_ID" Type="Int32" />
                <asp:Parameter Name="Delivery_unit" Type="String" />
                <asp:Parameter Name="supervisor" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Delivery_unit" Type="String" />
                <asp:Parameter Name="supervisor" Type="Int32" />
                <asp:Parameter Name="emp_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
