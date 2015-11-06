<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MultipleChoiceQuestion.ascx.cs" Inherits="Jeremy_Burke_CST465_Project.MultipleChoiceQuestion" %>

<asp:Label ID="lblRadioAnswer" AssociatedControlID="uxRadioAnswer" runat="server"></asp:Label>
<asp:RadioButtonList ID="uxRadioAnswer" runat="server"></asp:RadioButtonList>
<asp:RequiredFieldValidator ID="valRadioAnswer" ControlToValidate="uxRadioAnswer" Text="Please select an answer" ErrorMessage="Please select an answer" runat="server"></asp:RequiredFieldValidator>