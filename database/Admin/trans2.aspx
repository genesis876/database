<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="trans2.aspx.cs" Inherits="database.trans2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Label ID="Label1" runat="server" Text="Assign a new employee to a supervisor but it will only be successful if the supervisor supervises less than 10 employees"></asp:Label>
    <br />
    <br />
    <table class="nav-justified" style="width: 38%; height: 145px" border="1">
        <tr>
            <td style="width: 458px">employee ID</td>
            <td style="width: 418px" class="text-center">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 458px">Delivery unit</td>
            <td style="width: 418px" class="text-center">
                
                     <asp:DropDownList ID="DropDownList1" runat="server">
                         <asp:ListItem>Ludies</asp:ListItem>
                         <asp:ListItem>Catalans</asp:ListItem>
                     </asp:DropDownList>
                
            </td>
        </tr>
        <tr>
            <td style="width: 458px">supervisor</td>
            <td style="width: 418px" class="text-center">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 458px">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
            <td style="width: 418px" class="text-center">&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    
    <div>

    </div>
</asp:Content>
