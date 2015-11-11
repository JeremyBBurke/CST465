<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="UserProfileWithMaster.aspx.cs" Inherits="Jeremy_Burke_CST465_Project.UserProfileWithMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <title></title>
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
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphMain" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" ActiveViewIndex="0" runat="server">
                <asp:View ID="View1" runat="server">
                    <h1>Profile Settings</h1>
                    <br />
                    <asp:Label ID="lblFirstName" AssociatedControlID="uxFirstName" runat="server">First Name: </asp:Label>
                    <asp:RequiredFieldValidator ID="rfvFirstName" ControlToValidate="uxFirstName" Text=" * " ErrorMessage="First Name is Required" runat="server" />
                    <asp:TextBox ID="uxFirstName" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="lblLastName" AssociatedControlID="uxLastName" runat="server">Last Name: </asp:Label>
                    <asp:RequiredFieldValidator ID="rfvLastName" ControlToValidate="uxLastName" Text=" * " ErrorMessage="Last Name is Required" runat="server" />
                    <asp:TextBox ID="uxLastName" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="lblAge" AssociatedControlID="uxAge" runat="server">Age: </asp:Label>
                    <asp:RequiredFieldValidator ID="rfvAge" ControlToValidate="uxAge" Text=" * " ErrorMessage="Age is Required" runat="server" />
                    <asp:RangeValidator ID="ranAge" ControlToValidate="uxAge" MinimumValue="0" MaximumValue="200" Type="Integer" Text=" Age must be between 0 and 200 " ErrorMessage="Age must be between 0 and 200" runat="server" />
                    <asp:TextBox ID="uxAge" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="lblPhoneNumber" AssociatedControlID="uxPhoneNumber" runat="server">Phone Number: </asp:Label>
                    <asp:RequiredFieldValidator ID="rfvPhoneNumber" ControlToValidate="uxPhoneNumber" Text=" * " ErrorMessage="Phone Number is Required" runat="server" />
                    <asp:TextBox ID="uxPhonenumber" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="lblEmailAddress" AssociatedControlID="uxEmailAddress" runat="server">Email Address: </asp:Label>
                    <asp:RequiredFieldValidator ID="rfvEmailAddress" ControlToValidate="uxEmailAddress" Text=" * " ErrorMessage="Email Address is Required" runat="server" />
                    <asp:TextBox ID="uxEmailAddress" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="lblConfirmEmail" AssociatedControlID="uxConfirmEmail" runat="server">Confirm Email</asp:Label>
                    <asp:RequiredFieldValidator ID="rfvConfirmEmail" ControlToValidate="uxConfirmEmail" Text=" * " ErrorMessage="Email Address must be confirmed" runat="server" />
                    <asp:CompareValidator ID="cvEmail" runat="server" ControlToValidate="uxConfirmEmail" ControlToCompare="uxEmailAddress" Operator="Equal" Text=" Email Addresses do not match! " ErrorMessage="Email Addresses do not match" Display="Dynamic"> </asp:CompareValidator>
                    <asp:TextBox ID="uxConfirmEmail" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="lblStreetAddress" AssociatedControlID="uxStreetAddress" runat="server">Street Address</asp:Label>
                    <asp:TextBox ID="uxStreetAddress" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="lblCity" AssociatedControlID="uxCity" runat="server">City</asp:Label>
                    <asp:TextBox ID="uxCity" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="lblState" AssociatedControlID="uxState" runat="server">State</asp:Label>
                    <asp:DropDownList ID="uxState" runat="server" Width="200px" AutoPostBack="false">
                        <asp:ListItem Text="Oregon" Value="Oregon"></asp:ListItem>
                        <asp:ListItem Text="Washington" Value="Washington"></asp:ListItem>
                        <asp:ListItem Text="California" Value="California"></asp:ListItem>
                    </asp:DropDownList>
                    <br />

                    <asp:Label ID="lblZipcode" AssociatedControlID="uxZipCode" runat="server">Zip Code</asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="uxZipCode" ValidationExpression="\d{5}(\-\d{4})?" Text=" Zip code must be 5 numeric digits " ErrorMessage=" Zip code must be 5 numeric digits" runat="server" />
                    <asp:TextBox ID="uxZipcode" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="lblImageUpload" AssociatedControlID="uxImageUpload" runat="server">Profile Picture</asp:Label>
                    <asp:CustomValidator ID="cusvalImageUpload" runat="server" OnServerValidate="validateFile" ClientValidationFunction="validateFile" ControlToValidate="uxImageUpload"  Text=" Image must be a .png, .gif, or .img file! " ErrorMessage="Image must be a .png, .gif, or .img file!"></asp:CustomValidator>
                    <asp:FileUpload ID="uxImageUpload" runat="server" />
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
</asp:Content>

