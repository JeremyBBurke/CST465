<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Jeremy_Burke_CST465_Project.Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphNav" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphMain" runat="server">
    <asp:LoginView id="uxLoginView" runat="server">
            <AnonymousTemplate>
                <p>You must be signed in to post a blog entry</p>
            </AnonymousTemplate>
            <LoggedInTemplate>
                <asp:Label ID="lblTitle" AssociatedControlID="uxTitle" runat="server">Title:</asp:Label>
                <asp:TextBox ID="uxTitle" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblBody" AssociatedControlID="uxBody" runat="server">Body:</asp:Label>
                <asp:TextBox ID="uxBody" TextMode="MultiLine" runat="server"></asp:TextBox>
            </LoggedInTemplate>
        </asp:LoginView>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphFooter" runat="server">
</asp:Content>
