<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="500Error.aspx.cs" Inherits="Jeremy_Burke_CST465_Project._500Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            500 Internal Server Error
            <br />
            <strong>Reason</strong>
            <asp:Literal ID="litErrorMessage" runat="server"></asp:Literal>
            <br />
    </div>
    </form>
</body>
</html>
