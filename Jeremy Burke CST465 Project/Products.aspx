<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Jeremy_Burke_CST465_Project.Products" %>

<%@ Register TagPrefix="UCON" TagName="FeaturedProducts" Src="~/FeaturedProducts.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphNav" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphMain" runat="server">
    <UCON:FeaturedProducts runat="server"></UCON:FeaturedProducts>
    <h2>All Products</h2>
    <asp:SqlDataSource ID="dsallproducts" ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" SelectCommandType="StoredProcedure" SelectCommand="dbo.Products_GetList" runat="server" />
    <asp:Repeater runat="server" DataSourceID="dsallproducts">
        <ItemTemplate>
            <div class="product">
                <h3><%# Eval("Name") %></h3>
                <p><%# Eval("Description") %></p>
                <span class="price"><%# Eval("Price") %></span>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphFooter" runat="server">
</asp:Content>
