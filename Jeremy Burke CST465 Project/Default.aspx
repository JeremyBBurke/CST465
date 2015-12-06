<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Jeremy_Burke_CST465_Project.Default" %>

<%@ Register TagPrefix="UCON" TagName="FeaturedProducts" Src="~/FeaturedProducts.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphNav" runat="server">
    <UCON:FeaturedProducts runat="server"></UCON:FeaturedProducts>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphMain" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphFooter" runat="server">
</asp:Content>
