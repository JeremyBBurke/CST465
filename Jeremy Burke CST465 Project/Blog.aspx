<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Jeremy_Burke_CST465_Project.Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphNav" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphMain" runat="server">
    <asp:SqlDataSource ID="dsbloginsert" ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" InsertCommandType="StoredProcedure" InsertCommand="dbo.Blog_InsertUpdate" runat="server" />
    <asp:SqlDataSource ID="dsblogposts" ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" SelectCommandType="StoredProcedure" SelectCommand="dbo.Blog_GetPost" runat="server" />
    <asp:LoginView ID="uxLoginView" runat="server">
        <AnonymousTemplate>
            <p>You must be signed in to post a blog entry</p>
        </AnonymousTemplate>
        <LoggedInTemplate>
            <asp:FormView DefaultMode="Insert" DataSourceID="dsbloginsert" runat="server">
                <asp:InsertItemTemplate>
                    <asp:Label ID="lblTitle" AssociatedControlID="uxTitle" runat="server">Title:</asp:Label>
                    <asp:TextBox ID="uxTitle" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="lblBody" AssociatedControlID="uxBody" runat="server">Body:</asp:Label>
                    <asp:TextBox ID="uxBody" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <asp:Button ID="uxBlogPost" Text="Submit Post" CommandName="Insert" runat="server" />
                </asp:InsertItemTemplate>
            </asp:FormView>
        </LoggedInTemplate>
    </asp:LoginView>
    <asp:Repeater DataSourceID="dsblogposts" runat="server">
        <ItemTemplate>
            <article>
                <h1><%# Eval("Title") %></h1>
                <p><%# Eval("Content") %></p>
            </article>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphFooter" runat="server">
</asp:Content>
