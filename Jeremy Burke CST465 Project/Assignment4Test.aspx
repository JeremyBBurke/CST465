<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment4Test.aspx.cs" Inherits="Jeremy_Burke_CST465_Project.Assignment4Test" %>

<%@ Register TagPrefix="UCON" TagName="EssayQuestion" Src="~/EssayQuestion.ascx" %>
<%@ Register TagPrefix="UCON" TagName="MultipleChoiceQuestion" Src="~/MultipleChoiceQuestion.ascx" %>
<%@ Register TagPrefix="SCON" Namespace="Jeremy_Burke_CST465_Project.Code" Assembly="JeremyBurkeCST465Project" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assignment 4 Test</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <UCON:EssayQuestion ID="uxEssayQuestion" runat="server" QuestionText="Why do compilers suck?" />
            <br />
            <UCON:MultipleChoiceQuestion ID="uxMultipleChoiceQuestion" runat="server" QuestionText="What is the most common multiple choice answer?">
                <Buttons>
                    <asp:ListItem Text="A" Value="A"></asp:ListItem>
                    <asp:ListItem Text="B" Value="B"></asp:ListItem>
                    <asp:ListItem Text="C" Value="C"></asp:ListItem>
                    <asp:ListItem Text="D" Value="D"></asp:ListItem>
                </Buttons>
            </UCON:MultipleChoiceQuestion>
            <br />
            <SCON:ShortTextQuestion ID="uxShortText" runat="server" QuestionText="Why are compilers so stupid?" />
            <br />
            <SCON:TrueFalseQuestion ID="uxTF" runat="server" QuestionText="Compilers are dumb T/F?" />
            <br />
            <asp:Button ID="uxSubmit" Text="Save Answers" OnClick="uxSubmit_Click" runat="server" />
            <br />
            <br />
            <br />
            <asp:Literal ID="LitAnswers" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
