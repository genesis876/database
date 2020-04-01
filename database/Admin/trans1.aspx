<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="trans1.aspx.cs" Inherits="database.trans1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="industry_category" DataValueField="TotalPersons">
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label1" runat="server" Text="View Total Corporate client from an industry"></asp:Label>
    <br />
    <br />
    <div>


        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:groupworkConnectionString %>" SelectCommand="sp_countIndust" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="industry_category" HeaderText="industry_category" SortExpression="industry_category" />
                    <asp:BoundField DataField="TotalPersons" HeaderText="TotalPersons" ReadOnly="True" SortExpression="TotalPersons" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Record an Order"></asp:Label>
            <br />
            <table class="nav-justified" style="width: 33%">
                <tr>
                    <td>Custumer ID</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="height: 20px">Name</td>
                    <td style="height: 20px">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Client Reference ID</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Discount</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Parish</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Contact Number</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Street Number</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Street name</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Post Id</td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Charges</td>
                    <td>
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Delivery status</td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Delivery time category</td>
                    <td>
                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Recieve date</td>
                    <td>
                        <asp:TextBox ID="TextBox14" runat="server" TextMode ="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>employee ID</td>
                    <td>
                        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"/>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:groupworkConnectionString2 %>" SelectCommand="customertype" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="var1" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>


    </div>
</asp:Content>
