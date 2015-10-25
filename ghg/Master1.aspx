<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Master1.aspx.cs" Inherits="ghg.Master1" 
    %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="MyMetaTeg" content ="Hello" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn1"/>
    <asp:Button ID="Button2" runat="server" Text="Button" CssClass="btn2"/>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>Red</asp:ListItem>
        <asp:ListItem>Blue</asp:ListItem>
    </asp:DropDownList>

</asp:Content>
