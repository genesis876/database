<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="trans.aspx.cs" Inherits="database.trans" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
      <asp:Label ID="Label1" runat="server" Text="Can only assign post item to postman if his deliveries for the week are less than 20 "></asp:Label>
      <br />
      <br />
    <div>

        <table class="nav-justified">
            <tr>
                <td style="height: 20px; width: 310px;">Post ID</td>
                <td style="height: 20px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 310px">Charges</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 310px">delivery status</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                         <asp:ListItem>Delivered</asp:ListItem>
                         <asp:ListItem>Returned</asp:ListItem>
                     </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="height: 20px; width: 310px">delivery time category</td>
                <td style="height: 20px">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                         <asp:ListItem>normal</asp:ListItem>
                         <asp:ListItem>same day </asp:ListItem>
                         <asp:ListItem>express</asp:ListItem>
                     </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 310px">recieve date</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 310px">Customer ID</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 310px">employee ID</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 310px; height: 20px">start of week</td>
                <td style="height: 20px">
                    <asp:TextBox ID="TextBox10" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 310px">Delivery unit</td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                         <asp:ListItem>Ludies</asp:ListItem>
                         <asp:ListItem>Catalans</asp:ListItem>
                     </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 310px">supervisor Id</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 310px">
                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"/>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
