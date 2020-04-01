<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mial.aspx.cs" Inherits="database.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
         <asp:Label ID="Label1" runat="server" Text="Mail Table"></asp:Label>
         <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Post_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Post_ID" HeaderText="Post_ID" ReadOnly="True" SortExpression="Post_ID" />
                <asp:BoundField DataField="mailing_category" HeaderText="mailing_category" SortExpression="mailing_category" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Insert a new record"></asp:Label>
        <br />
        <table class="nav-justified" style="width: 37%; height: 65px">
            <tr>
                <td>Post Id</td>
                <td>Mailing Category</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Medical </asp:ListItem>
                        <asp:ListItem>Legal </asp:ListItem>
                        <asp:ListItem>Government</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />

        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:groupworkConnectionString %>" DeleteCommand="DELETE FROM [Mail] WHERE [Post_ID] = @Post_ID" InsertCommand="INSERT INTO [Mail] ([Post_ID], [mailing_category]) VALUES (@Post_ID, @mailing_category)" SelectCommand="SELECT * FROM [Mail]" UpdateCommand="UPDATE [Mail] SET [mailing_category] = @mailing_category WHERE [Post_ID] = @Post_ID">
            <DeleteParameters>
                <asp:Parameter Name="Post_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Post_ID" Type="String" />
                <asp:Parameter Name="mailing_category" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="mailing_category" Type="String" />
                <asp:Parameter Name="Post_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
