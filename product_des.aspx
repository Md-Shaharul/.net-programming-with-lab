<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="product_des.aspx.cs" Inherits="FinalFurnitureShowroom.User.product_des" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
   

     <asp:Repeater runat="server" id="d1" OnItemCommand="d1_ItemCommand"> 
        <HeaderTemplate>
  
        </HeaderTemplate>
      
         <ItemTemplate>
           
           <div style="height:300px;width:600px; border-style:solid; border-width:1px;"> 
        <div style="height:300px;width:200px; float:left; border-style:solid; border-width:1px;" >
           <img src='../<%#Eval("productImage") %>' height="300" width="200" />
        </div>
               <div style="height:300px;width:395px; float:left; border-style:solid; border-width:1px;" >
               item name=<%#Eval("productName") %><br></br>
               product_desc=<%#Eval("productDes") %><br></br>
               product_price=<%#Eval("productPrice") %><br></br>
               product_Quantity=<%#Eval("productQuantity") %></div>
               
        
    </div>
        </div>
       </ItemTemplate>
         
        <FooterTemplate>

        </FooterTemplate>
    </asp:Repeater>
    <table>
        <tr>
            <td> 
                <asp:Label Text="Enter Quantity" Font-Size="Medium" runat="server" BackColor="#FF0066" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbxQuantity" runat="server"></asp:TextBox>
            </td>
            <td>  <asp:Button ID="btnAddToCart" runat="server" Text="ADD TO CART" OnClick="btnAddToCart_Click" BackColor="#FF0066" ForeColor="White" /></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label Text="" ID="lblError" ForeColor="Red" runat="server"></asp:Label>
            </td>
           
        </tr>
    </table>
   <br />
                 

</asp:Content>
