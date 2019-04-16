<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="AfterSearch.aspx.cs" Inherits="FinalFurnitureShowroom.User.AfterSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
      <asp:Repeater runat="server" id="d1"> 
        <HeaderTemplate>
  <ul>
        </HeaderTemplate>
      
         <ItemTemplate>
           
          <li class="last"> 
              <a href="product_des.aspx?id=<%#Eval("id") %>"> <img src="../<%#Eval("productImage") %>" height= "150" width="150" alt="" /></a>
            <div class="product-info">
              <h3><%# Eval("productName")%></h3>
              <div class="product-desc">
                  <h4>available_Quantity<%#Eval("productQuantity")%></h4>
                <p><%# Eval("productDes")%></p>

               
                <strong class="price"><%#Eval("productPrice") %></strong> </div>
            </div>

          </li>
                
        </ItemTemplate>
         
        <FooterTemplate>
</ul>
        </FooterTemplate>
    </asp:Repeater>
    <div>
                 <asp:Button Text="Show All Product" ID="btnShow" runat="server" Font-Bold="true" Font-Size="Medium" OnClick="btnShow_Click" /> 
        </div>
</asp:Content>
