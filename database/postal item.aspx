<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="postal item.aspx.cs" Inherits="database.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
         <br />
         <asp:Label ID="Label1" runat="server" Text="Postal items"></asp:Label>
         <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Post_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Post_ID" HeaderText="Post_ID" ReadOnly="True" SortExpression="Post_ID" />
                <asp:BoundField DataField="Charges" HeaderText="Charges" SortExpression="Charges" />
                <asp:BoundField DataField="delivery_status" HeaderText="delivery_status" SortExpression="delivery_status" />
                <asp:BoundField DataField="delivery_time_cate" HeaderText="delivery_time_cate" SortExpression="delivery_time_cate" />
                <asp:BoundField DataField="recieve_date" HeaderText="recieve_date" SortExpression="recieve_date" />
                <asp:BoundField DataField="Cust_ID" HeaderText="Cust_ID" SortExpression="Cust_ID" />
                <asp:BoundField DataField="emp_ID" HeaderText="emp_ID" SortExpression="emp_ID" />
            </Columns>
        </asp:GridView>
         <br />
         <asp:Label ID="Label3" runat="server" Text="Insert an item"></asp:Label>
         <br />
         <table class="nav-justified" style="width: 84%; height: 55px">
             <tr>
                 <td>Post ID</td>
                 <td>Charges</td>
                 <td>Delivery Status</td>
                 <td>&nbsp;</td>
                 <td>Delivery time category</td>
                 <td>Recieve date</td>
                 <td>customer id </td>
                 <td>employee id</td>
             </tr>
             <tr>
                 <td>
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 </td>
                 <td>
                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 </td>
                 <td>
                     <asp:DropDownList ID="DropDownList1" runat="server">
                         <asp:ListItem>Delivered</asp:ListItem>
                         <asp:ListItem>Returned</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td>&nbsp;</td>
                 <td>
                     <asp:DropDownList ID="DropDownList2" runat="server">
                         <asp:ListItem>normal</asp:ListItem>
                         <asp:ListItem>same day </asp:ListItem>
                         <asp:ListItem>express</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td>
                     <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                 </td>
                 <td>
                     <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                 </td>
                 <td>
                     <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                 </td>
             </tr>
         </table>
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
         <br />
         <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:groupworkConnectionString %>" DeleteCommand="DELETE FROM [Postal_Item] WHERE [Post_ID] = @Post_ID" InsertCommand="INSERT INTO [Postal_Item] ([Post_ID], [Charges], [delivery_status], [delivery_time_cate], [recieve_date], [Cust_ID], [emp_ID]) VALUES (@Post_ID, @Charges, @delivery_status, @delivery_time_cate, @recieve_date, @Cust_ID, @emp_ID)" SelectCommand="SELECT * FROM [Postal_Item]" UpdateCommand="UPDATE [Postal_Item] SET [Charges] = @Charges, [delivery_status] = @delivery_status, [delivery_time_cate] = @delivery_time_cate, [recieve_date] = @recieve_date, [Cust_ID] = @Cust_ID, [emp_ID] = @emp_ID WHERE [Post_ID] = @Post_ID">
            <DeleteParameters>
                <asp:Parameter Name="Post_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Post_ID" Type="String" />
                <asp:Parameter Name="Charges" Type="Double" />
                <asp:Parameter Name="delivery_status" Type="String" />
                <asp:Parameter Name="delivery_time_cate" Type="String" />
                <asp:Parameter DbType="Date" Name="recieve_date" />
                <asp:Parameter Name="Cust_ID" Type="Int32" />
                <asp:Parameter Name="emp_ID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Charges" Type="Double" />
                <asp:Parameter Name="delivery_status" Type="String" />
                <asp:Parameter Name="delivery_time_cate" Type="String" />
                <asp:Parameter DbType="Date" Name="recieve_date" />
                <asp:Parameter Name="Cust_ID" Type="Int32" />
                <asp:Parameter Name="emp_ID" Type="Int32" />
                <asp:Parameter Name="Post_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
