<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sp5.aspx.cs" Inherits="database.sp5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Determine whether a client is a personal or corporate one"></asp:Label>
        <br />
        <br />

        <table style="width: 46%; border-style: solid; border-width: 3px; height: 121px;">
            <tr>
                <td>Customer id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            </table>
        <br />
        <br />

    </div>
</asp:Content>
