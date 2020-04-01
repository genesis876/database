<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="client.aspx.cs" Inherits="database.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <h3>Client Information</h3>
<h3>&nbsp;</h3>
    <div>

        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Cust_ID">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Cust_ID" HeaderText="Cust_ID" ReadOnly="True" SortExpression="Cust_ID" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="clientRefID" HeaderText="clientRefID" SortExpression="clientRefID" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="discount" HeaderText="discount" SortExpression="discount" />
                <asp:BoundField DataField="parish" HeaderText="parish" SortExpression="parish" />
                <asp:BoundField DataField="contact_num" HeaderText="contact_num" SortExpression="contact_num" />
                <asp:BoundField DataField="street_num" HeaderText="street_num" SortExpression="street_num" />
                <asp:BoundField DataField="street_name" HeaderText="street_name" SortExpression="street_name" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Insert a New Client"></asp:Label>
        <br />
        <br />
        <table class="nav-justified">
            <tr>
                <td>ClientId</td>
                <td>Name</td>
                <td>ReferenceID</td>
                <td>Email</td>
                <td>Discount</td>
                <td>Parish</td>
                <td>Number</td>
                <td>Street num</td>
                <td>Street Name</td>
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
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:groupworkConnectionString %>" DeleteCommand="DELETE FROM [Client] WHERE [Cust_ID] = @Cust_ID" InsertCommand="INSERT INTO [Client] ([Cust_ID], [name], [clientRefID], [email], [discount], [parish], [contact_num], [street_num], [street_name]) VALUES (@Cust_ID, @name, @clientRefID, @email, @discount, @parish, @contact_num, @street_num, @street_name)" SelectCommand="SELECT * FROM [Client]" UpdateCommand="UPDATE [Client] SET [name] = @name, [clientRefID] = @clientRefID, [email] = @email, [discount] = @discount, [parish] = @parish, [contact_num] = @contact_num, [street_num] = @street_num, [street_name] = @street_name WHERE [Cust_ID] = @Cust_ID">
            <DeleteParameters>
                <asp:Parameter Name="Cust_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Cust_ID" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="clientRefID" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="discount" Type="Double" />
                <asp:Parameter Name="parish" Type="String" />
                <asp:Parameter Name="contact_num" Type="String" />
                <asp:Parameter Name="street_num" Type="String" />
                <asp:Parameter Name="street_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="clientRefID" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="discount" Type="Double" />
                <asp:Parameter Name="parish" Type="String" />
                <asp:Parameter Name="contact_num" Type="String" />
                <asp:Parameter Name="street_num" Type="String" />
                <asp:Parameter Name="street_name" Type="String" />
                <asp:Parameter Name="Cust_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
