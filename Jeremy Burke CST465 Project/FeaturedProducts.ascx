<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FeaturedProducts.ascx.cs" Inherits="Jeremy_Burke_CST465_Project.FeaturedProducts" %>

<h2>Featured Products</h2>
<asp:SqlDataSource ID="dsfeaturedproducts" ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" SelectCommandType="StoredProcedure" SelectCommand="dbo.Products_GetFeatured" runat="server" />
<asp:Repeater runat="server" DataSourceID="dsfeaturedproducts">
    <ItemTemplate>
        <div class="product">
            <h3><%# Eval("Name") %></h3>
            <p><%# Eval("Description") %></p>
            <span class="price"><%# Eval("Price") %></span>
        </div>
    </ItemTemplate>
</asp:Repeater>

