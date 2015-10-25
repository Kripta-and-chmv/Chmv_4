<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <form id="form1" runat="server">
       
          <div> <asp:Button ID="Button1" runat="server" Text="Button" /></div>
       
        <div>   <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="height: 21px">
           </asp:DropDownList>
        </div>
       
   </form>

   

</asp:Content>
