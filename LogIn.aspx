<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="FinalFurnitureShowroom.User.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <h1 align="center" > <b>Log In Page<b> </b> </h1>
     <br />
    <br />
    <div style="background-color:antiquewhite; width: 750px; height: 293px;">
    <table align="center" style="width: 187px; height: 234px"> 
                <tr> 
           <td style="width: 193px">
               <font size="4" ><b> Sign In</b></font>
           </td>
        </tr>
        <tr> <td style="width: 193px"> </td></tr>
         <tr>

         <td style="width: 193px"> <asp:Label Text="Email"  runat="server" Font-Bold="true" Font-Size="Medium"> </asp:Label></td>
   </tr> 
        
        <tr> 
             <td style="width: 193px"> 
                <asp:TextBox id="tbxEmail" runat="server" placeholder="Enter Your Email"> </asp:TextBox>
            </td>
        </tr>
        <tr> 
            <td style="width: 193px; height: 25px;"> 
                <asp:Label Text="Password"  runat="server" Font-Size="Medium"   Font-Bold="true" > </asp:Label>

            </td>
             </tr>
         <tr>
            <td style="width: 193px">
                <asp:TextBox id="tbxPassword" runat="server" placeholder="Enter Your Password" textMode="Password" ></asp:TextBox>
            </td>
            </tr>
         <tr> <td style="width: 193px"> 
                <asp:Button Text="Sign In" Font-Size="Medium" ID="btnRegister" runat="server" BackColor="SpringGreen" OnClick="btnRegister_Click"  /> 
            </td></tr>
        
         <tr>
            <td style="width: 193px; height: 46px;"> <asp:Label Text="" ID="lblError" runat="server" ForeColor="red"> </asp:Label></td>
        </tr>
          </table>
        </div>
</asp:Content>
