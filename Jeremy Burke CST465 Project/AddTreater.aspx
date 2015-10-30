<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTreater.aspx.cs" Inherits="Jeremy_Burke_CST465_Project.AddTreater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="sqldsCandy" ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" SelectCommandType="Text" SelectCommand="SELECT * FROM Candy " runat="server" />
            <asp:SqlDataSource ID="sqldsCostumes" ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" SelectCommandType="Text" SelectCommand="SELECT * FROM Costumes " runat="server" />
            <asp:SqlDataSource ID="sqldsInsertTreaters" ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" InsertCommandType="Text" InsertCommand="INSERT INTO Treaters(Name, FavoriteCandyID, CostumeID) VALUES (@Name, @FavoriteCandyID, @CostumeID)" runat="server" />

            <asp:FormView ID="uxInsertForm" DefaultMode="Insert" DataSourceID="sqldsInsertTreaters" runat="server">
                <InsertItemTemplate>
                    <asp:Label ID="lblName" AssociatedControlID="uxName" runat="server">Name: </asp:Label>
                    <asp:TextBox ID ="uxName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    <br />

                    <asp:Label ID="lblFavoriteCandy" AssociatedControlID="uxFavoriteCandy" runat="server">Favorite Candy: </asp:Label>
                    <asp:DropDownList ID="uxFavoriteCandy" SelectedValue='<%# Bind("FavoriteCandyID") %>' runat="server" AutoPostBack="false" DataSourceID="sqldsCandy" DataTextField="ProductName" DataValueField="Id"></asp:DropDownList>
                    <br />

                    <asp:Label ID="lblCostume" AssociatedControlID="uxCostume" runat="server">Costume: </asp:Label>
                    <asp:DropDownList ID="uxCostume" SelectedValue='<%# Bind("CostumeID") %>' runat="server" AutoPostBack="false" DataSourceID="sqldsCostumes" DataTextField="Costume" DataValueField="Id"></asp:DropDownList>
                    <br />
                    <asp:Button ID="uxAddTreater" CommandName="Insert" runat="server" Text="Add Treater" />
                </InsertItemTemplate>
                <EditItemTemplate>

                </EditItemTemplate>
            </asp:FormView>

        </div>
    </form>
</body>
</html>
