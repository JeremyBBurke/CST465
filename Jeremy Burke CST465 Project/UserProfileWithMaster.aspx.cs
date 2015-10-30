using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Jeremy_Burke_CST465_Project.Code;

namespace Jeremy_Burke_CST465_Project
{
    public partial class UserProfileWithMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ProfileData"] != null)
            {
                string base64String = null;
                UserProfileObject SavedProfile = (UserProfileObject)Session["ProfileData"];
                MultiView1.ActiveViewIndex = 1;
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
                UserProfileObject myprofile = new UserProfileObject();
                myprofile.FirstName = uxFirstName.Text;
                myprofile.LastName = uxLastName.Text;
                myprofile.Age = uxAge.Text;
                myprofile.PhoneNumber = uxPhonenumber.Text;
                myprofile.EmailAddress = uxEmailAddress.Text;
                myprofile.ConfrimEmail = uxConfirmEmail.Text;
                myprofile.StreetAddress = uxStreetAddress.Text;
                myprofile.City = uxCity.Text;
                myprofile.State = uxState.Text;
                myprofile.Zip = uxZipcode.Text;
                if (uxImageUpload.HasFile)
                {
                    byte[] buffer = new byte[uxImageUpload.PostedFile.ContentLength];
                    uxImageUpload.PostedFile.InputStream.Read(buffer, 0, uxImageUpload.PostedFile.ContentLength);
                    myprofile.profileimage = buffer;
                }
                Session["ProfileData"] = myprofile;
                Response.Redirect("UserProfile.aspx");
            }
        }
    }
}