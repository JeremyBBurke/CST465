<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewTreaters.aspx.cs" Inherits="Jeremy_Burke_CST465_Project.ViewTreaters" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="sqldsTreaters" ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" SelectCommandType="Text" SelectCommand="SELECT Name, ProductName, Costume FROM Treaters JOIN Candy ON Treaters.FavoriteCandyID=Candy.ID JOIN Costumes ON Treaters.CostumeID = Costumes.ID" runat="server" />
            <asp:Repeater ID="uxTreaters" DataSourceID="sqldsTreaters" runat="server">
                <ItemTemplate>
                    Name: <%# Eval("Name") %> - Favorite Candy: <%# Eval("ProductName") %> - Costume: <%# Eval("Costume") %><br />
                </ItemTemplate>
            </asp:Repeater>

        </div>
    </form>
</body>
</html>
