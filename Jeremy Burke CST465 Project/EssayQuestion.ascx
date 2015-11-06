<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EssayQuestion.ascx.cs" Inherits="Jeremy_Burke_CST465_Project.EssayQuestion" %>

<asp:Label ID="lblAnswer" AssociatedControlID="uxAnswer" runat="server"></asp:Label>
<asp:TextBox ID="uxAnswer" TextMode="MultiLine" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="valAnswer" ControlToValidate="uxAnswer" Text="Please input an answer" ErrorMessage="Please input an answer" Display="Dynamic" runat="server"></asp:RequiredFieldValidator>