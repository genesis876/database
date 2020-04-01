<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Personal.aspx.cs" Inherits="database.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
         <br />
         <asp:Label ID="Label1" runat="server" Text="Personal Clients"></asp:Label>
         <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Cust_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Cust_ID" HeaderText="Cust_ID" ReadOnly="True" SortExpression="Cust_ID" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Marital_Status" HeaderText="Marital_Status" SortExpression="Marital_Status" />
            </Columns>
        </asp:GridView>
         <br />
         <br />
         <asp:Label ID="Label2" runat="server" Text="Insert a new item"></asp:Label>
         <br />
         <table class="nav-justified" style="width: 66%; height: 33px">
             <tr>
                 <td>Customer Id</td>
                 <td>DOB</td>
                 <td>Gender</td>
                 <td>Marital Status</td>
             </tr>
             <tr>
                 <td>
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 </td>
                 <td>
                     <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" ></asp:TextBox>
                 </td>
                 <td>
                     <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                         <asp:ListItem Value="M">Male</asp:ListItem>
                         <asp:ListItem Value="F">Female</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td>
                     <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                         <asp:ListItem Value="S">Single</asp:ListItem>
                         <asp:ListItem Value="M">Married</asp:ListItem>
                     </asp:DropDownList>
                 </td>
             </tr>
         </table>
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
         <br />
         <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:groupworkConnectionString %>" DeleteCommand="DELETE FROM [Personal] WHERE [Cust_ID] = @Cust_ID" InsertCommand="INSERT INTO [Personal] ([Cust_ID], [DOB], [Gender], [Marital_Status]) VALUES (@Cust_ID, @DOB, @Gender, @Marital_Status)" SelectCommand="SELECT * FROM [Personal]" UpdateCommand="UPDATE [Personal] SET [DOB] = @DOB, [Gender] = @Gender, [Marital_Status] = @Marital_Status WHERE [Cust_ID] = @Cust_ID">
            <DeleteParameters>
                <asp:Parameter Name="Cust_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Cust_ID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="DOB" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Marital_Status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="DOB" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Marital_Status" Type="String" />
                <asp:Parameter Name="Cust_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
