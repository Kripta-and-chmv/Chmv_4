<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="ghg.view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="view1" runat="server">
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </asp:View>
                <asp:View ID="view2" runat="server">
                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                </asp:View>
                <asp:View ID="view3" runat="server">
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </asp:View>
            </asp:MultiView>
        </div>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton_Click">view 1</asp:LinkButton>
&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton_Click">view 2</asp:LinkButton>
&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton_Click">view 3</asp:LinkButton>
&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">to main</asp:LinkButton>
    </form>
</body>
</html>
