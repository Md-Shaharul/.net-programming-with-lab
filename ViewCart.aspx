<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="FinalFurnitureShowroom.User.ViewCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div align="center" style="background-color: #00FF00"> 
       <asp:Button ID="btnViewCart" Text="ViewCart" runat="server"  OnClick="btnViewCart_Click" BackColor="#FF0066" ForeColor="White" Height="38px" Width="103px" />
       <asp:DataList ID="dl1" runat="server"  BackColor="LightGoldenrodYellow" BorderWidth="1px" BorderColor="Tan" CellPadding="2" ForeColor="Black" Width="537px" Height="604px">
           <HeaderStyle BackColor="Tan" Font-Bold="True" />
           <HeaderTemplate>
               <table border="1"> 
                   <tr style="background-color:silver; color:white; font-weight:bold">
                       <td>Product image </td>
                       <td>Product Name </td>
                       <td>Product Description </td>
                       <td>Product Price </td>
                       <td>Product Quantity </td>
                       <td>Delete </td>
                   </tr>
           </HeaderTemplate>
          
           <ItemTemplate>
               <tr>
                   <td>
                   <img src="<%#Eval("productImage") %>" height="100" width="100" />
                     
                   </td>
                   <td >
                         <%#Eval("productName")%>
                       </td>
                   <td>
                        <%#Eval("productDes")%>
                   </td>
                   <td>
                    <%#Eval("productPrice")%>
                       </td>
                    <td>
                  <%#Eval("productQuantity")%>
                  
                   </td>
                   <td>
                       <a href="delete_cart.aspx?id=<%#Eval("id")%>">Delete</a>
                   </td>
               </tr>
           </ItemTemplate>
           <AlternatingItemStyle BackColor="PaleGoldenrod" />
           <FooterStyle BackColor="Tan" />
           <FooterTemplate>
               </table>

           </FooterTemplate>
           <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
       </asp:DataList>
        <br />
        <p align="center">
        <asp:Label id="l1" runat="server" Text="price"> </asp:Label><br />
            <asp:Button ID="btnCheckOut" runat="server" Text="CheckOut" OnClick="btnCheckOut_Click" BackColor="#FF0066" ForeColor="White" Height="38px" Width="103px" />
            </p>
        <p align="left">
            &nbsp;</p>
        <p align="center">
                <asp:Button ID="btnBuyNow" text="BuyNow" runat="server" OnClick="btnBuyNow_Click" BackColor="#FF0066" ForeColor="White" Height="38px" Width="103px"  /> 
            </p>
            <asp:HyperLink ID="HyperLink1" runat="server" Text="Continue Shopping" Font-Size="Medium" NavigateUrl="~/User/DisplayItem1.aspx"></asp:HyperLink>
            
      
   </div>
&nbsp;
</asp:Content>
