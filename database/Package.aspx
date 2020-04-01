<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Package.aspx.cs" Inherits="database.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
         <br />
         <asp:Label ID="Label1" runat="server" Text="Package Table"></asp:Label>
         <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Post_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Post_ID" HeaderText="Post_ID" ReadOnly="True" SortExpression="Post_ID" />
            <asp:BoundField DataField="handleType" HeaderText="handleType" SortExpression="handleType" />
            <asp:BoundField DataField="packageWeight" HeaderText="packageWeight" SortExpression="packageWeight" />
        </Columns>
    </asp:GridView>
         <br />
         <br />
         <asp:Label ID="Label4" runat="server" Text="Insert an item"></asp:Label>
         <table class="nav-justified" style="width: 43%; height: 86px">
             <tr>
                 <td>Post Id </td>
                 <td>Handle type</td>
                 <td>Package Weight</td>
             </tr>
             <tr>
                 <td>
                     <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                 </td>
                 <td>
                     <asp:DropDownList ID="DropDownList1" runat="server">
                         <asp:ListItem>delicate</asp:ListItem>
                         <asp:ListItem>consumable </asp:ListItem>
                         <asp:ListItem>flammable</asp:ListItem>
                         <asp:ListItem>fragile</asp:ListItem>
                         <asp:ListItem>normal</asp:ListItem>
                         <asp:ListItem></asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td>
                     <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
                 </td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
         </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:groupworkConnectionString %>" DeleteCommand="DELETE FROM [Package] WHERE [Post_ID] = @Post_ID" InsertCommand="INSERT INTO [Package] ([Post_ID], [handleType], [packageWeight]) VALUES (@Post_ID, @handleType, @packageWeight)" SelectCommand="SELECT * FROM [Package]" UpdateCommand="UPDATE [Package] SET [handleType] = @handleType, [packageWeight] = @packageWeight WHERE [Post_ID] = @Post_ID">
        <DeleteParameters>
            <asp:Parameter Name="Post_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Post_ID" Type="String" />
            <asp:Parameter Name="handleType" Type="String" />
            <asp:Parameter Name="packageWeight" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="handleType" Type="String" />
            <asp:Parameter Name="packageWeight" Type="Int32" />
            <asp:Parameter Name="Post_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

         <br />

    </div>
</asp:Content>
