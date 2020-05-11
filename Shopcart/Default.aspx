<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Shopcart._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    This is the main page <br />
    <asp:Button ID="btnSayHello" runat="server" Text="Say Hello" OnClick="btnSayHello_Click" /><br />
    -
    <asp:Label ID="lblHello" runat="server"></asp:Label>


</asp:Content>
