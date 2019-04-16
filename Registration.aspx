<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="FinalFurnitureShowroom.User.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
     <asp:HiddenField ID="hfUserId" runat="server" /> 
    <div  style="background-color:coral"> 
    <table align="center" bgcolor="#66FF33" border="1px"> 
        <tr> 
           <td class="auto-style3">
               <font size="3" ><b> Create Account</b></font>
           </td>
        </tr>
        <tr> <td class="auto-style3"> </td></tr>
        <tr> 
            <td class="auto-style3"> 
                <asp:Label Text="First Name"  runat="server" Font-Bold="true"> </asp:Label>
          </td>
           
        </tr> 
        <tr> 
            <td>
                <asp:TextBox id="tbxName" runat="server" placeholder="Enter Your First Name"> </asp:TextBox>
            </td>
            </tr>
       
         
        <tr> 
          <td> <asp:Label Text="LastName" Font-Bold="true" runat="server"></asp:Label>

           
           </tr>
        <tr>
             <td >
                <asp:TextBox id="tbxLastName" runat="server" placeholder="Enter Your LastName"> </asp:TextBox></td> 

        </tr>
            <tr> 
            <td> 
                <asp:Label Text="Phone"  runat="server" Font-Bold="true"> </asp:Label>
            </td>

                </tr>
        <tr>
            <td>
                <asp:TextBox id="tbxPhone" runat="server" placeholder="Enter Your Phone"> </asp:TextBox>
            </td>
            </tr>
      
        <tr>

         <td> <asp:Label Text="Email"  runat="server" Font-Bold="true"> </asp:Label></td>
   </tr> 
        
        <tr> 
             <td> 
                <asp:TextBox id="tbxEmail" runat="server" placeholder="Enter Your Email"> </asp:TextBox>
            </td>
        </tr>
        <tr> <td> 
                <asp:RegularExpressionValidator runat="server" ErrorMessage="Enter the valid email" ForeColor="red" ControlToValidate="tbxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
             </td></tr>
           <tr> 
            <td> 
                <asp:Label Text="Address"  runat="server" Font-Bold="true" > </asp:Label>

            </td>
             </tr>
        <tr>
            <td>
                <asp:TextBox id="tbxAddress" runat="server" TextMode="MultiLine"> </asp:TextBox>
            </td>
            </tr>
        <tr> 
            <td> 
                <asp:Label Text="City"  runat="server" Font-Bold="true" > </asp:Label>

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
                <asp:Label Text="StateCode"  runat="server" Font-Bold="true" > </asp:Label>

            </td>
             </tr>
        <tr>
            <td>
                <asp:TextBox id="tbxStateCode" runat="server" TextMode="SingleLine"> </asp:TextBox>
            </td>
            </tr>

       
         <tr> 
            <td> 
                <asp:Label Text="Password"  runat="server" Font-Bold="true" > </asp:Label>

            </td>
             </tr>
        <tr>
            <td>
                <asp:TextBox id="tbxPassword" runat="server" placeholder="Enter Your Password" textMode="Password"> </asp:TextBox>
            </td>
            </tr>
       
        <tr>
          <td> <asp:Label Text="Confirm Password" runat="server" Font-Bold="true" > </asp:Label></td>

            
            </tr>

        <tr> <td > <asp:TextBox ID="tbxConfirm" runat="server" placeholder="Confirm Password" TextMode="Password"> </asp:TextBox></td>
</tr>
               
        
        <tr> <td > 
                <asp:Button Text="Create Account" ID="btnRegister" runat="server" BackColor="SpringGreen" OnClick="btnRegister_Click" /> 
            </td></tr>
          <tr> 
            <td> 
                <asp:Label Text="Already Have An Account?" runat="server" Font-Italic="true"> </asp:Label> 
                <asp:Button ID="btnlogIn" runat="server" Text="LogIn" BackColor="Khaki" OnClick="btnlogIn_Click" />
            
            
            </td>
              <td></tr>
         <tr> 
            <td> 
                <asp:Label Text="lblSuccessfull" runat="server" ID="lblSuccessfull" ForeColor="green"> </asp:Label>
                
            </td>
               
            
              </tr>

        <tr><td> 
                <asp:Label Text="lblError" runat="server" ID="lblError" ForeColor="red"> </asp:Label>
            </td>
            
       
       
    </table>
        </div>
</asp:Content>
