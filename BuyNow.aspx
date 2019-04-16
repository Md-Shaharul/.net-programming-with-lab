<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="BuyNow.aspx.cs" Inherits="FinalFurnitureShowroom.User.BuyNow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div>
    <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="#FF0066" Text="Payment Option" ></asp:Label>
        <br />
        <table style="width: 100%" border="1" bgcolor="Yellow" >
            <tr>
                <td style="width: 173px">Your First Name &nbsp; </td>
                <td>
                    <asp:Label ID="lblFirstName" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 173px">Your Last Name</td>
                <td>
                    <asp:Label ID="lblLastName" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 173px">phone</td>
                <td>
                    <asp:Label ID="lblPhone" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 173px">Address</td>
                <td>
                    <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 173px">City</td>
                <td>
                    <asp:Label ID="lblCity" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 173px">StateCode</td>
                <td>
                    <asp:Label ID="lblStateCode" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 173px">Total Price</td>
                <td>
                    <asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
                       
        </table>
         <input type="hidden" runat="server" id="key" name="key" value="gtKFFx" />
        <input type="hidden" runat="server" id="salt" name="salt" value="eCwWELxi" />
        <input type="hidden" runat="server" id="hash" name="hash" value=""  />
        <input type="hidden" runat="server" id="txnid" name="txnid" value="" />
                
                    <asp:Button ID="Button1" runat="server" BackColor="Lime" Text="PayNow" OnClick="Button1_Click" Height="44px" Width="97px" />
                
           
        </div>
</asp:Content>
