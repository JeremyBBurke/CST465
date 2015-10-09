<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Jeremy_Burke_CST465_Project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:label id="lblName" AssociatedControlID="uxName" runat="server">Name</asp:label>
        <asp:TextBox ID="uxName" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="lbluxUserType" AssociatedControlID="uxUserType" runat="server">User Type</asp:Label>
        <asp:DropDownList ID="uxUserType" runat="server" Width="200px" AutoPostBack="true">
                <asp:ListItem Text="Student" Value="Student"></asp:ListItem>
                <asp:ListItem Text="Facutly/Staff" Value="Faculty/Staff"></asp:ListItem>
        </asp:DropDownList>
        <br />

        <asp:label id="lblHobby" AssociatedControlID="uxHobby" runat="server">Hobby</asp:label>
        <asp:TextBox ID="uxHobby" runat="server"></asp:TextBox>
        <br />

        <asp:label id="lblBand" AssociatedControlID="uxBand" runat="server">Band</asp:label>
        <asp:TextBox ID="uxBand" runat="server"></asp:TextBox>
        <br />

        <asp:label id="lblBiography" AssociatedControlID="uxBiography" runat="server">Biography</asp:label>
        <asp:TextBox ID="uxBiography" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />

        <table>
            <thead>
                <tr>
                    <th>Course Prefix</th>
                    <th>Course Number</th> 
                    <th>Course Description</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><asp:TextBox ID="uxCoursePrefix" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="uxCourseNumber" runat="server"></asp:TextBox></td> 
                    <td><asp:TextBox ID="uxCourseDescription" runat="server"></asp:TextBox></td>
                </tr>
            </tbody>
        </table>
        <br />
        
        <asp:Button ID="uxSubmit" text="Save Profile" OnClick="uxSubmit_Click" runat="server" />
        <br />
        <asp:Literal ID="uxIsPostBack" runat="server"></asp:Literal>
        <br />
        <asp:Literal ID="uxFormOutput" runat="server"></asp:Literal>
        <br />
        <asp:Literal ID="uxEventOutput" runat="server"></asp:Literal>
        <br />
    </div>
    </form>
</body>
</html>
