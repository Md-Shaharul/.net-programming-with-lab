<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="Bed.aspx.cs" Inherits="FinalFurnitureShowroom.User.Bed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div>
    <asp:Label ID="Label1" runat="server" Font-Size="Larger" ForeColor="#009933" Text="Welcome to the bed store"></asp:Label>
    <asp:datalist runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyField="id" DataSourceID="SqlDataSource1" ForeColor="Black" OnSelectedIndexChanged="dtList_SelectedIndexChanged" RepeatDirection="Horizontal" RepeatColumns="3" OnItemCommand="Unnamed1_ItemCommand">
        <AlternatingItemStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <ItemTemplate>
            <table style="width: 100%">
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product Id &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("productId") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("productName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height: 18px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("productDes") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label5" runat="server" Text='<%# Eval("productQuantity") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="ac" style="height: 18px">&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("productImage") %>' Width="200px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("productPrice") %>'></asp:Label>
                    </td>
                </tr>
               
            </table>
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />

    </asp:datalist>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString3 %>" SelectCommand="SELECT * FROM [productDetails1]"></asp:SqlDataSource>
        </div>
</asp:Content>
