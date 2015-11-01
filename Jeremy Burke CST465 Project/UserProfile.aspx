<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Jeremy_Burke_CST465_Project.UserProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="~/css/DefaultStyles.css" />
    <script type="text/javascript">
        function validateFile(sender, args) {
            var allowedExtensions = ['jpg', 'gif', 'png'];
            var fileExtension = args.Value.split(/(\.)/g).pop();
            args.IsValid = false;
            for (var i = 0; i < allowedExtensions.length; i++) {
                if (fileExtension == allowedExtensions[i]) {
                    args.IsValid = true;
                }
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" ActiveViewIndex="0" runat="server">
                <asp:View ID="View1" runat="server">
                    <h1>Profile Settings</h1>
                    <br />
                    <asp:Label ID="lblFirstName" AssociatedControlID="uxFirstName" runat="server" CssClass="Label">First Name:</asp:Label>
                    <asp:TextBox ID="uxFirstName" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFirstName" ControlToValidate="uxFirstName" Text="First Name is Required" ErrorMessage="First Name is Required" runat="server" />
                    <br />

                    <asp:Label ID="lblLastName" AssociatedControlID="uxLastName" runat="server" CssClass="Label">Last Name:</asp:Label>
                    <asp:TextBox ID="uxLastName" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvLastName" ControlToValidate="uxLastName" Text="Last Name is Required" ErrorMessage="Last Name is Required" runat="server" />
                    <br />

                    <asp:Label ID="lblAge" AssociatedControlID="uxAge" runat="server" CssClass="Label">Age:</asp:Label>
                    <asp:TextBox ID="uxAge" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAge" ControlToValidate="uxAge" Text="Age is Required" ErrorMessage="Age is Required" runat="server" />
                    <asp:RangeValidator ID="ranAge" ControlToValidate="uxAge" MinimumValue="0" MaximumValue="200" Type="Integer" Text="Age must be between 0 and 200" ErrorMessage="Age must be between 0 and 200" runat="server" />
                    <br />

                    <asp:Label ID="lblPhoneNumber" AssociatedControlID="uxPhoneNumber" runat="server" CssClass="Label">Phone Number:</asp:Label>
                    <asp:TextBox ID="uxPhonenumber" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPhoneNumber" ControlToValidate="uxPhoneNumber" Text="Phone Number is Required" ErrorMessage="Phone Number is Required" runat="server" />
                    <br />

                    <asp:Label ID="lblEmailAddress" AssociatedControlID="uxEmailAddress" runat="server" CssClass="Label">Email Address:</asp:Label>
                    <asp:TextBox ID="uxEmailAddress" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmailAddress" ControlToValidate="uxEmailAddress" Text="Email Address is Required" ErrorMessage="Email Address is Required" runat="server" />
                    <br />

                    <asp:Label ID="lblConfirmEmail" AssociatedControlID="uxConfirmEmail" runat="server" CssClass="Label">Confirm Email:</asp:Label>
                    <asp:TextBox ID="uxConfirmEmail" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvConfirmEmail" ControlToValidate="uxConfirmEmail" Text="Email Address must be confirmed!" ErrorMessage="Email Address must be confirmed" runat="server" />
                    <asp:CompareValidator ID="cvEmail" runat="server" ControlToValidate="uxConfirmEmail" ControlToCompare="uxEmailAddress" Operator="Equal" Text="Email Addresses do not match!" ErrorMessage="Email Addresses do not match" Display="Dynamic"> </asp:CompareValidator>
                    <br />

                    <asp:Label ID="lblStreetAddress" AssociatedControlID="uxStreetAddress" runat="server" CssClass="Label">Street Address:</asp:Label>
                    <asp:TextBox ID="uxStreetAddress" runat="server" CssClass="textbox"></asp:TextBox>
                    <br />

                    <asp:Label ID="lblCity" AssociatedControlID="uxCity" runat="server" CssClass="Label">City:</asp:Label>
                    <asp:TextBox ID="uxCity" runat="server" CssClass="textbox"></asp:TextBox>
                    <br />

                    <asp:Label ID="lblState" AssociatedControlID="uxState" runat="server" CssClass="Label">State:</asp:Label>
                    <asp:DropDownList ID="uxState" runat="server" Width="200px" AutoPostBack="false" CssClass="DropDown">
                        <asp:ListItem Text="Oregon" Value="Oregon"></asp:ListItem>
                        <asp:ListItem Text="Washington" Value="Washington"></asp:ListItem>
                        <asp:ListItem Text="California" Value="California"></asp:ListItem>
                    </asp:DropDownList>
                    <br />

                    <asp:Label ID="lblZipcode" AssociatedControlID="uxZipCode" runat="server" CssClass="Label">Zip Code:</asp:Label>
                    <asp:TextBox ID="uxZipcode" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="uxZipCode" ValidationExpression="\d{5}(\-\d{4})?" Text="Zip code must be 5 numeric digits" ErrorMessage="Zip code must be 5 numeric digits" runat="server" />
                    <br />

                    <asp:Label ID="lblImageUpload" AssociatedControlID="uxImageUpload" runat="server" CssClass="Label">Profile Picture:</asp:Label>
                    <asp:FileUpload ID="uxImageUpload" runat="server" CssClass="FileUpload" />
                    <asp:CustomValidator ID="cusvalImageUpload" runat="server" OnServerValidate="validateFile" ClientValidationFunction="validateFile" ControlToValidate="uxImageUpload"  Text="Image must be a .png, .gif, or .img file!" ErrorMessage="Image must be a .png, .gif, or .img file!"></asp:CustomValidator>
                    <br />

                    <asp:Button ID="uxSubmit" Text="Save Profile" OnClick="uxSubmit_Click" runat="server" />
                    <br />

                    <asp:ValidationSummary ID="valSum" DisplayMode="BulletList" ShowSummary="false" ShowMessageBox="true" HeaderText="Please Resolve the following errors: " runat="server" />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <strong>First Name</strong>
                    <asp:Literal ID="litFirstName" runat="server"></asp:Literal>
                    <br />

                    <strong>Last Name</strong>
                    <asp:Literal ID="litLastName" runat="server"></asp:Literal>
                    <br />

                    <strong>Age</strong>
                    <asp:Literal ID="litAge" runat="server"></asp:Literal>
                    <br />

                    <strong>Phone Number</strong>
                    <asp:Literal ID="litPhoneNumber" runat="server"></asp:Literal>
                    <br />

                    <strong>Email Address</strong>
                    <asp:Literal ID="litEmailAddress" runat="server"></asp:Literal>
                    <br />

                    <strong>Confrim Email</strong>
                    <asp:Literal ID="litConfirmEmail" runat="server"></asp:Literal>
                    <br />

                    <strong>Street Address</strong>
                    <asp:Literal ID="litStreetAddress" runat="server"></asp:Literal>
                    <br />

                    <strong>City</strong>
                    <asp:Literal ID="litCity" runat="server"></asp:Literal>
                    <br />

                    <strong>State</strong>
                    <asp:Literal ID="litState" runat="server"></asp:Literal>
                    <br />

                    <strong>Zip Code</strong>
                    <asp:Literal ID="litZipCode" runat="server"></asp:Literal>
                    <br />

                    <strong>Profile Image</strong>
                    <asp:Image ID="uxImage" runat="server" />
                    <br />
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
