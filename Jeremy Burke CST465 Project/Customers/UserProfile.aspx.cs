using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using Jeremy_Burke_CST465_Project.Code;

namespace Jeremy_Burke_CST465_Project
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserProfileObject SavedProfile;
            string base64String = null;
            if (Session["ProfileData"] != null)
            {
                SavedProfile = (UserProfileObject)Session["ProfileData"];
                litFirstName.Text = SavedProfile.FirstName;
                litLastName.Text = SavedProfile.LastName;
                litAge.Text = SavedProfile.Age;
                litPhoneNumber.Text = SavedProfile.PhoneNumber;
                litEmailAddress.Text = SavedProfile.EmailAddress;
                litConfirmEmail.Text = SavedProfile.ConfrimEmail;
                litStreetAddress.Text = SavedProfile.StreetAddress;
                litCity.Text = SavedProfile.City;
                litState.Text = SavedProfile.State;
                litZipCode.Text = SavedProfile.Zip;
                using (MemoryStream m = new MemoryStream(SavedProfile.profileimage))
                {
                    byte[] imageBytes = m.ToArray();
                    // Convert byte[] to Base64 String                    
                    base64String = Convert.ToBase64String(imageBytes);
                }
                if (!string.IsNullOrEmpty(base64String))
                {
                    uxImage.ImageUrl = "data:image/jpeg;base64," + base64String;
                }
            }
            else
            {
                MembershipUser user = Membership.GetUser();
                Guid userID = (Guid)user.ProviderUserKey;
                SavedProfile = UserProfileRepo.GetUserProfile(userID);
                litFirstName.Text = SavedProfile.FirstName;
                litLastName.Text = SavedProfile.LastName;
                litAge.Text = SavedProfile.Age;
                litPhoneNumber.Text = SavedProfile.PhoneNumber;
                litEmailAddress.Text = SavedProfile.EmailAddress;
                litConfirmEmail.Text = SavedProfile.ConfrimEmail;
                litStreetAddress.Text = SavedProfile.StreetAddress;
                litCity.Text = SavedProfile.City;
                litState.Text = SavedProfile.State;
                litZipCode.Text = SavedProfile.Zip;
                if (SavedProfile.profileimage != null)
                {
                    using (MemoryStream m = new MemoryStream(SavedProfile.profileimage))
                    {
                        byte[] imageBytes = m.ToArray();
                        // Convert byte[] to Base64 String                    
                        base64String = Convert.ToBase64String(imageBytes);
                    }
                    if (!string.IsNullOrEmpty(base64String))
                    {
                        uxImage.ImageUrl = "data:image/jpeg;base64," + base64String;
                    }
                }
            }
        }
        protected void validateFile(object sender, ServerValidateEventArgs e)
        {
            if (uxImageUpload.HasFile)
            {
                if (Path.GetExtension(uxImageUpload.FileName).ToLower() != ".jpg"
                    && Path.GetExtension(uxImageUpload.FileName).ToLower() != ".png"
                    && Path.GetExtension(uxImageUpload.FileName).ToLower() != ".gif")
                {
                    e.IsValid = false;
                }
                else
                {
                    e.IsValid = true;
                }
            }
        }
        protected void uxSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                MembershipUser user = Membership.GetUser();
                Guid userID = (Guid)user.ProviderUserKey;
                UserProfileObject myprofile = new UserProfileObject();
                myprofile.UserID = userID;
                myprofile.FirstName = uxFirstName.Text;
                myprofile.LastName = uxLastName.Text;
                myprofile.Age = uxAge.Text;
                myprofile.PhoneNumber = uxPhonenumber.Text;
                myprofile.EmailAddress = uxEmailAddress.Text;
                myprofile.ConfrimEmail = uxConfirmEmail.Text;
                myprofile.StreetAddress = uxStreetAddress.Text;
                myprofile.City = uxCity.Text;
                myprofile.State = uxState.SelectedValue;
                myprofile.Zip = uxZipcode.Text;
                if (uxImageUpload.HasFile)
                {
                    byte[] buffer = new byte[uxImageUpload.PostedFile.ContentLength];
                    uxImageUpload.PostedFile.InputStream.Read(buffer, 0, uxImageUpload.PostedFile.ContentLength);
                    myprofile.profileimage = buffer;
                }
                Session["ProfileData"] = myprofile;
                UserProfileRepo.SaveUserProfile(myprofile);
                MultiView1.ActiveViewIndex = 1;
            }
        }
        protected void uxEdit_Click(object sender, EventArgs e)
        {
            UserProfileObject SavedProfile;
            MembershipUser user = Membership.GetUser();
            Guid userID = (Guid)user.ProviderUserKey;
            SavedProfile = UserProfileRepo.GetUserProfile(userID);
            uxFirstName.Text = SavedProfile.FirstName;
            uxLastName.Text = SavedProfile.LastName;
            uxAge.Text = SavedProfile.Age;
            uxPhonenumber.Text = SavedProfile.PhoneNumber;
            uxEmailAddress.Text = SavedProfile.EmailAddress;
            uxStreetAddress.Text = SavedProfile.StreetAddress;
            uxCity.Text = SavedProfile.City;
            //uxState.SelectedValue = SavedProfile.State;
            uxZipcode.Text = SavedProfile.Zip;
            MultiView1.ActiveViewIndex = 0;
        }
    }
}