<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Shopcart.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Contact Page</h2>
    <h3>Contact Information:</h3>
    <address>
        33 Libery St<br />
        New York, New York 10045<br />
        <abbr title="Phone">Phone Number: </abbr>
        212.720.5000
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:thefederal.fed.us">thefederal.fed.us</a><br />
        <strong>Marketing:</strong> <a href="mailto:fedsupport.fed.us">fedsupport.fed.us</a>
    </address>
</asp:Content>
