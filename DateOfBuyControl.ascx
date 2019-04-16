<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DateOfBuyControl.ascx.cs" Inherits="FinalFurnitureShowroom.User.DateOfBuyControl" %>
DateOfBuy <asp:TextBox id="textDate" runat="server" Width="115px"> </asp:TextBox>
<asp:imagebutton id="imgButton" runat="server"  OnClick="imgButton_Click" > </asp:imagebutton>
<asp:Calendar id="calanderr1" runat="server" OnSelectionChanged="calanderr1_SelectionChanged"> </asp:Calendar>
<asp:Button Text="Show" runat="server" id="btnShow" OnClick="btnShow_Click"/> 