<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="Jeremy_Burke_CST465_Project.Admin.UserManagement" %>

<asp:Content ID="Content4" ContentPlaceHolderID="cphMain" runat="server">
    <asp:Label ID="lblRoles" AssociatedControlID="uxRoles" runat="server">Roles:</asp:Label>
    <asp:ListBox ID="uxRoles" runat="server"></asp:ListBox>
    <asp:Label ID="lblRoleName" AssociatedControlID="uxAddrole" runat="server">Role Name:</asp:Label>
    <asp:TextBox ID="uxRoleName" runat="server"></asp:TextBox>
    <asp:Button ID="uxAddRole" Text="Add Role" OnClick="uxAdd_Role" runat="server" />
</asp:Content>

