<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="UploadProfile.aspx.cs" Inherits="FinalFurnitureShowroom.User.UploadProfile" %>

<%@ Register Src="~/User/DateOfBuyControl.ascx" TagPrefix="uc1" TagName="DateOfBuyControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div>
      <uc1:DateOfBuyControl runat="server" id="DateOfBuyControl" />
  </div>
 <table style="width: 343px">
     <tr>   
         <td>
        <asp:FileUpload ID="uploadFile" runat="server" />
         </td>
     </tr>
     <tr>   
         <td>
         <asp:Button ID="btnUpload" runat="server" text="upload" OnClick="btnUpload_Click"/> 
  
         </td>
     </tr>
 <tr>   
         <td>
       <asp:Label id="lblErrorMessage" runat="server"> </asp:Label>
         </td>
     </tr>
     <tr>   
         <td>
         <asp:HyperLink id="hyperLink" runat="server">View upload image</asp:HyperLink>
         </td>
     </tr>
 
   </table>
            
        
       
</asp:Content>
