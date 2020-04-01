<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="return.aspx.cs" Inherits="database.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
         <br />
         <asp:Label ID="Label1" runat="server" Text="Returns"></asp:Label>
         <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:groupworkConnectionString %>" DeleteCommand="DELETE FROM [Return] WHERE [return_time] = @return_time AND [emp_ID] = @emp_ID AND [Post_ID] = @Post_ID" InsertCommand="INSERT INTO [Return] ([return_time], [emp_ID], [Post_ID]) VALUES (@return_time, @emp_ID, @Post_ID)" SelectCommand="SELECT * FROM [Return]">
            <DeleteParameters>
                <asp:Parameter Name="return_time" Type="Int32" />
                <asp:Parameter Name="emp_ID" Type="Int32" />
                <asp:Parameter Name="Post_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="return_time" Type="Int32" />
                <asp:Parameter Name="emp_ID" Type="Int32" />
                <asp:Parameter Name="Post_ID" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="return_time,emp_ID,Post_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="return_time" HeaderText="return_time" ReadOnly="True" SortExpression="return_time" />
                <asp:BoundField DataField="emp_ID" HeaderText="emp_ID" ReadOnly="True" SortExpression="emp_ID" />
                <asp:BoundField DataField="Post_ID" HeaderText="Post_ID" ReadOnly="True" SortExpression="Post_ID" />
            </Columns>
        </asp:GridView>
         <br />
         <table class="nav-justified" style="width: 64%; height: 52px">
             <tr>
                 <td>Return time</td>
                 <td>Employee id</td>
                 <td>Post item id</td>
             </tr>
             <tr>
                 <td>
                     <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                 </td>
                 <td>
                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 </td>
                 <td>
                     <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                 </td>
             </tr>
         </table>
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
         <br />
         <br />
         <br />
    </div>
</asp:Content>
