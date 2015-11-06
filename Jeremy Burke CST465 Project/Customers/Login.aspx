<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Jeremy_Burke_CST465_Project.Customers.Login" %>

<asp:Content ID="Content4" ContentPlaceHolderID="cphMain" runat="server">
    <asp:Login MembershipProvider="SqlMembership" runat="server" CreateUserText="Register" CreateUserUrl="~/Customers/Register.aspx"></asp:Login>
</asp:Content>
