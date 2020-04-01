<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sp3.aspx.cs" Inherits="database.sp3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Find out the status of a delivery and who it belongs to"></asp:Label>
        <table style="width: 31%; height: 216px; border-style: solid; border-width: 2px">
            <tr>
                <td>Post ID</td>
                <td style="width: 135px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 135px">
                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"/>
                </td>
            </tr>
            <tr>
                <td style="height: 37px">
                    <asp:Label ID="Label5" runat="server" Text="Customer ID"></asp:Label>
                </td>
                <td style="width: 135px; height: 37px">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Name"></asp:Label>
                </td>
                <td style="width: 135px">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 49px">
                    <asp:Label ID="Label7" runat="server" Text="Delivery Status"></asp:Label>
                </td>
                <td style="width: 135px; height: 49px;">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    </div>
</asp:Content>
