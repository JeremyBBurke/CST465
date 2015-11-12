<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="MidtermExam.aspx.cs" Inherits="Jeremy_Burke_CST465_Project.MidtermExam" %>

<%@ Register TagPrefix="UCON" TagName="EssayQuestion" Src="~/EssayQuestion.ascx" %>
<%@ Register TagPrefix="UCON" TagName="MultipleChoiceQuestion" Src="~/MultipleChoiceQuestion.ascx" %>
<%@ Register TagPrefix="SCON" Namespace="Jeremy_Burke_CST465_Project.Code" Assembly="JeremyBurkeCST465Project" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphNav" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphMain" runat="server">
    <asp:PlaceHolder ID="uxQuestions" runat="server">

        <SCON:TrueFalseQuestion QuestionText="HTTP is a stateless protocol: " runat="server" />
        <br />
        <SCON:TrueFalseQuestion QuestionText="SessionState can be transferred between pages: " runat="server" />
        <br />
        <SCON:TrueFalseQuestion QuestionText="Sanitizing database inputs is only important for sites handling sensitive information: " runat="server" />
        <br />
        <SCON:TrueFalseQuestion QuestionText="ViewState can be transferred between pages: " runat="server" />
        <br />
        <SCON:TrueFalseQuestion QuestionText="Cookies can be transferred between pages: " runat="server" />
        <br />
        <SCON:TrueFalseQuestion QuestionText="It is a good practice to use inline CSS styles: " runat="server" />
        <br />
        <SCON:TrueFalseQuestion QuestionText="All controls in ASP.NET support DataBinding: " runat="server" />
        <br />
        <SCON:TrueFalseQuestion QuestionText="Browsers must support ASP.NET in order to display pages created with it: " runat="server" />
        <br />
        <SCON:TrueFalseQuestion QuestionText="When a MasterPage is used, a page wraps its own content with the MasterPages’s content: " runat="server" />
        <br />
        <SCON:TrueFalseQuestion QuestionText="&#60; deny &#62; authorization rules in the web.config are processed first regardless of the way the rules are ordered.: " runat="server" />
        <br />

        <UCON:EssayQuestion runat="server" QuestionText="Place the following events in order of when they occur in the page lifecycle:<br /> Load, Init, Request Arrives, PreRender, Load ViewState, Input Control Event Handling<br />" />
        <br />
        <br />
        <UCON:EssayQuestion runat="server" QuestionText="What is the purpose of the doctype declaration at the top of a web page?<br />" />
        <br />
        <br />
        <UCON:EssayQuestion runat="server" QuestionText="What is the order of precedence for the same style defined in the following ways?<br />Style tag in document head, Extenal Style Sheet referenced by the link tag in document head<br />" />
        <br />
        <br />
        <UCON:EssayQuestion runat="server" QuestionText="What is the order of precedence for CSS for referencing elements in the following ways<br />By Element Name, By ID, By CSS Class, Inline using the style= attribute<br />" />
        <br />
        <br />
        <UCON:EssayQuestion runat="server" QuestionText="Explain why the alt attribute of the img tag is important<br />" />
        <br />
        <br />
        <UCON:EssayQuestion runat="server" QuestionText="What is the purpose of name mangling?<br />" />
        <br />
        <br />
        <UCON:EssayQuestion runat="server" QuestionText="Explain the difference between redirects that use a 301 HTTP status code and ones that use a 302 HTTP status code<br />" />
        <br />
        <br />

        <UCON:MultipleChoiceQuestion runat="server" QuestionText="HTML Stands for: ">
            <Buttons>
                <asp:ListItem Text="HoTMaiL" Value="HoTMaiL"></asp:ListItem>
                <asp:ListItem Text="Highly Transferable Modeling Language" Value="Highly Transferable Modeling Language"></asp:ListItem>
                <asp:ListItem Text="HyperText Markup Language" Value="HyperText Markup Language"></asp:ListItem>
                <asp:ListItem Text="High Traffic Masking Language" Value="High Traffic Masking Language"></asp:ListItem>
            </Buttons>
        </UCON:MultipleChoiceQuestion>
        <br />
        <UCON:MultipleChoiceQuestion runat="server" QuestionText="All controls that ask for user input should have an associated: ">
            <Buttons>
                <asp:ListItem Text="Label" Value="Label"></asp:ListItem>
                <asp:ListItem Text="Validator" Value="Validator"></asp:ListItem>
                <asp:ListItem Text="Event Handler" Value="Event Handler"></asp:ListItem>
                <asp:ListItem Text="Ferret" Value="Ferret"></asp:ListItem>
            </Buttons>
        </UCON:MultipleChoiceQuestion>
        <br />
        <UCON:MultipleChoiceQuestion runat="server" QuestionText="The living version of a page within the web browser is called the: ">
            <Buttons>
                <asp:ListItem Text="Output Rendering Model" Value="Output Rendering Model"></asp:ListItem>
                <asp:ListItem Text="Document Object Model" Value="Document Object Model"></asp:ListItem>
                <asp:ListItem Text="Box Model" Value="Box Model"></asp:ListItem>
                <asp:ListItem Text="Underwear Model" Value="Underwear Model"></asp:ListItem>
            </Buttons>
        </UCON:MultipleChoiceQuestion>
        <br />
        <UCON:MultipleChoiceQuestion runat="server" QuestionText="Which of the following elements is most appropriate for presenting the user with a list of items in no particular order?: ">
            <Buttons>
                <asp:ListItem Text="ol" Value="ol"></asp:ListItem>
                <asp:ListItem Text="ul" Value="ul"></asp:ListItem>
                <asp:ListItem Text="dl" Value="dl"></asp:ListItem>
                <asp:ListItem Text="dropdownlist" Value="dropdownlist"></asp:ListItem>
            </Buttons>
        </UCON:MultipleChoiceQuestion>
        <br />
        <UCON:MultipleChoiceQuestion runat="server" QuestionText="What is the difference between the ViewStateMode and EnableViewState properties in the &#60;&#37;&#64; Page &#37;&#62; declaration?: ">
            <Buttons>
                <asp:ListItem Text="ViewStateMode was introduced in ASP.NET 4 to allow more than true/false values, but currently there is no distinguishable difference in functionality" Value="ViewStateMode was introduced in ASP.NET 4 to allow more than true/false values, but currently there is no distinguishable difference in functionality"></asp:ListItem>
                <asp:ListItem Text="When ViewState is disabled via ViewStateMode, it can't be enabled at the control level" Value="When ViewState is disabled via ViewStateMode, it can't be enabled at the control level"></asp:ListItem>
                <asp:ListItem Text="When ViewState is disabled via EnableViewState, it can't be enabled at the control level" Value="When ViewState is disabled via EnableViewState, it can't be enabled at the control level"></asp:ListItem>
                <asp:ListItem Text="When ViewState is enabled via ViewStateMode, it can't be disabled at the control level" Value="When ViewState is enabled via ViewStateMode, it can't be disabled at the control level"></asp:ListItem>
                <asp:ListItem Text="When ViewState is enabled via EnableViewState, it can't be disabled at the control level" Value="When ViewState is enabled via EnableViewState, it can't be disabled at the control level"></asp:ListItem>
            </Buttons>
        </UCON:MultipleChoiceQuestion>
        <br />

        <SCON:ShortTextQuestion runat="server" QuestionText="The line of text that tells a SqlDataSource how to connect to the database is called a __________" />
        <br />
        <br />
        <SCON:ShortTextQuestion runat="server" QuestionText="When a WebForms page performs a POST operation to itself, it is referred to as a __________" />
        <br />
        <br />
        <SCON:ShortTextQuestion runat="server" QuestionText="The term for loading a controls data from a data source is __________" />
        <br />
        <br />
        <SCON:ShortTextQuestion runat="server" QuestionText="An example of a block element is __________" />
        <br />
        <br />
        <SCON:ShortTextQuestion runat="server" QuestionText="An example of an inline element is __________" />
        <br />
        <br />
        <SCON:ShortTextQuestion runat="server" QuestionText="What is the name of the file that stores configuration information for a web site? __________" />
        <br />
        <br />
        <SCON:ShortTextQuestion runat="server" QuestionText="A div with the following CSS will have what computed height and width? { margin: 0 0 5px; padding: 5px 10px; height: 100px; width: 50px;  border-left: solid 3px #0c0; } __________" />
        <br />
        <br />
    </asp:PlaceHolder>
    <asp:Button ID="uxSubmitExam" Text="Submit Exam" OnClick="uxSubmit_Exam" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphFooter" runat="server">
</asp:Content>
