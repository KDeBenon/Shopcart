<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowDetails.aspx.cs" Inherits="Shopcart.ShowDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:SqlDataSource ID="dataProduct" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="ID" Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
   <table width="600px">
       <tr>
           <td>
               <asp:DetailsView ID="dvProduct" runat="server" Height="183px" Width="125px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id,Category,Product,Price" DataSourceID="dataProduct" ForeColor="#333333" GridLines="None">
                   <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                   <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                   <EditRowStyle BackColor="#999999" />
                   <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                   <Fields>
                       <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                       <asp:BoundField DataField="Product" HeaderText="Product" SortExpression="Product" />
                       <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                       <asp:ImageField DataImageUrlField="Image">
                           <ControlStyle Height="100px" Width="100px" />
                       </asp:ImageField>
                       <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                   </Fields>
                   <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                   <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                   <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
               </asp:DetailsView>
           </td>
           <td>
               Quantity: <asp:TextBox ID="txtQuantity" runat="server">1</asp:TextBox>
               <br />
               <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="btnAddToCart" runat="server" OnClick="btnAddToCart_Click" Text="Add To Cart" />
               <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           </td>

       </tr>

   </table> 

</asp:Content>
