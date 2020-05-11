<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="Shopcart.ViewCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    <asp:Table ID="tblCart" runat="server" Width="556px">
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Category</asp:TableCell>
            <asp:TableCell runat="server">Product</asp:TableCell>
            <asp:TableCell runat="server" HorizontalAlign="Right">Price</asp:TableCell>
            <asp:TableCell runat="server" HorizontalAlign="Right">Quantity</asp:TableCell>
            <asp:TableCell runat="server">Total</asp:TableCell>
        </asp:TableRow>
    </asp:Table><br />&nbsp;&nbsp;&nbsp; Order Total:
    <asp:Label ID="lblOrderTotal" runat="server" Text="$0.00"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btnClearCart" runat="server" OnClick="btnClearCart_Click" Text="Clear Cart" />
    <br /><br />


</asp:Content>
