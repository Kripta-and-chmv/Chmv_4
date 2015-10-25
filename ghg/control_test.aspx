<%@ Page Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="control_test.aspx.cs" 
    Inherits="ghg.control_test" %>
<%@ Register 
    Assembly="ghg"
    Namespace="mtb"
    TagPrefix="MyControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   <MyControls:MyTableControl 
       runat="server" OnClick="Unnamed1_Click" ID="me"/>
    </div>
        
    </form>
</body>
</html>
