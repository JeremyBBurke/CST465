<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Jeremy_Burke_CST465_Project.Customers.Register" %>

<asp:Content ID="Content4" ContentPlaceHolderID="cphMain" runat="server">
    <asp:CreateUserWizard MembershipProvider="SqlMembership" ContinueDestinationPageUrl="~/Customers/Login.aspx" runat="server"></asp:CreateUserWizard>
</asp:Content>
