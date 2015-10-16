using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jeremy_Burke_CST465_Project
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void validateFile(object sender, ServerValidateEventArgs e)
        {
            if(uxImageUpload.HasFile)
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
                MultiView1.ActiveViewIndex = 1;
                litFirstName.Text = uxFirstName.Text;
                litLastName.Text = uxLastName.Text;
                litAge.Text = uxAge.Text;
                litPhoneNumber.Text = uxPhonenumber.Text;
                litEmailAddress.Text = uxEmailAddress.Text;
                litConfirmEmail.Text = uxConfirmEmail.Text;
                litStreetAddress.Text = uxStreetAddress.Text;
                litCity.Text = uxCity.Text;
                litState.Text = uxState.Text;
                litZipCode.Text = uxZipcode.Text;
                if (uxImageUpload.HasFile)
                {
                    string base64String = null;
                    byte[] buffer = new byte[uxImageUpload.PostedFile.ContentLength];
                    uxImageUpload.PostedFile.InputStream.Read(buffer, 0, uxImageUpload.PostedFile.ContentLength);
                    using (MemoryStream m = new MemoryStream(buffer))
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
    }
}