<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="ManageProducts.aspx.cs" Inherits="Jeremy_Burke_CST465_Project.Admin.ManageProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphNav" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphMain" runat="server">
    <asp:SqlDataSource ID="dsProducts" ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" SelectCommandType="StoredProcedure" InsertCommandType="StoredProcedure" UpdateCommandType="StoredProcedure" InsertCommand="dbo.Product_InsertUpdate" UpdateCommand="dbo.Product_InsertUpdate" SelectCommand="dbo.Product_GetList" runat="server"></asp:SqlDataSource>
    <asp:FormView runat="server" DataSourceID="dsProducts">
    </asp:FormView>
    <asp:GridView runat="server" DataSourceID="dsproducts" AutoGenerateColumns="false" AllowSorting="true" DataKeyNames="ID" AllowPaging="true" PageSize="5">
        <Columns>
            <asp:BoundField DataField="Name" SortExpression="Name" HeaderText="Name" />
            <asp:TemplateField>
                <ItemTemplate>
                    <span>
                        <%# Eval("Name") %>
                        <%# Eval("Description") %>
                        <%# Eval("Price") %>
                    </span>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True"></asp:CommandField>
        </Columns>
    </asp:GridView>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphFooter" runat="server">
</asp:Content>
