<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="update_order_details.aspx.cs" Inherits="FinalFurnitureShowroom.User.update_order_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <h1 align="center"> <b>Update Order Details Page </b></h1>
    <br />
    <br />
    <div style="width: 735px; height: 484px">
    <table align="center" bgcolor="#33CC33" border="1px">
       <tr> 
            <td class="auto-style3"> 
                <asp:Label Text="First Name" Font-Size="Medium" runat="server" Font-Bold="true"> </asp:Label>
          </td>
           
        </tr> 
        <tr> 
            <td>
                <asp:TextBox id="tbxName" Font-Size="Medium" runat="server" placeholder="Enter Your First Name"> </asp:TextBox>
            </td>
            </tr>
       
         
        <tr> 
          <td> <asp:Label Text="LastName" Font-Size="Medium"   Font-Bold="true" runat="server"></asp:Label>

           
           </tr>
        <tr>
             <td >
                <asp:TextBox id="tbxLastName" Font-Size="Medium" runat="server" placeholder="Enter Your LastName"> </asp:TextBox></td> 

        </tr>
            <tr> 
            <td> 
                <asp:Label Text="Phone" Font-Size="Medium" runat="server" Font-Bold="true"> </asp:Label>
            </td>

                </tr>
        <tr>
            <td>
                <asp:TextBox id="tbxPhone" runat="server" placeholder="Enter Your Phone"> </asp:TextBox>
            </td>
            </tr>
      
        

         <tr> 
            <td> 
                <asp:Label Text="Address"  Font-Size="Medium" runat="server" Font-Bold="true" > </asp:Label>

            </td>
             </tr>
        <tr>
            <td>
                <asp:TextBox id="tbxAddress" runat="server" TextMode="MultiLine"> </asp:TextBox>
            </td>
            </tr>
        <tr> 
            <td> 
                <asp:Label Text="City" Font-Size="Medium"  runat="server" Font-Bold="true" > </asp:Label>

            </td>
             </tr>
        <tr>
            <td>
                <asp:DropDownList ID="ddlCity" runat="server">
                    <asp:ListItem  value="0"> Select City</asp:ListItem>
                    <asp:ListItem>Bangladesh</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>Australia</asp:ListItem>
                    <asp:ListItem>Pakistan</asp:ListItem>
                    <asp:ListItem>Srilanka</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            </tr>
        <tr> 
            <td> 
                <asp:Label Text="StateCode"  Font-Size="Medium" runat="server" Font-Bold="true" > </asp:Label>

            </td>
             </tr>
        <tr>
            <td>
                <asp:TextBox id="tbxStateCode" Font-Size="Medium" runat="server" TextMode="SingleLine"> </asp:TextBox>
            </td>
            </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Button ID="btnUpdate" text="Update and Continue" Font-Size="Medium" runat="server" OnClick="btnUpdate_Click" BackColor="#660033" ForeColor="White" /> 
            </td>
        </tr>
        
    </table>
        </div>
</asp:Content>
