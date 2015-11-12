<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="Jeremy_Burke_CST465_Project.Results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphNav" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphMain" runat="server">
    <asp:Repeater ID="uxResults" runat="server">
        <HeaderTemplate>
            <table>
                <thead>
                    <tr>
                        <th>Question</th>
                        <th>Answer</th>
                    </tr>
                </thead>
                <tbody>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><b><%# Eval("QuestionText") %></b></td>
                <td><%# Eval("Answer") %></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </tbody>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphFooter" runat="server">
</asp:Content>
