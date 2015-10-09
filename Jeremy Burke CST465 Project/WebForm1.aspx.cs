using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jeremy_Burke_CST465_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected override void OnInitComplete(EventArgs e)
        {
            base.OnInitComplete(e);
            uxEventOutput.Text += "OnInit<br />";
        }
        protected override void OnLoadComplete(EventArgs e)
        {
            base.OnLoadComplete(e);
            uxEventOutput.Text += "OnLoad<br />";
            if (IsPostBack)
            {
                uxIsPostBack.Text += "Postback = True<br />";
            }
            else
            {
                uxIsPostBack.Text += "Postback = False<br />";
            }
        }
        protected override void OnPreRenderComplete(EventArgs e)
        {
            base.OnPreRenderComplete(e);
            uxEventOutput.Text += "OnPreRender<br />";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void uxSubmit_Click (object sender, EventArgs e)
        {
            uxEventOutput.Text += ("Name:" + uxName.Text + "<br />"
                                + "User Type: " + uxUserType.Text + "<br />"
                                + "Hobby: " + uxHobby.Text + "<br />"
                                + "Band: " + uxBand.Text + "<br />"
                                + "Biography: " + uxBiography.Text + "<br />"
                                + uxCoursePrefix.Text + uxCourseNumber.Text + "-" + uxCourseDescription.Text + "<br />");
        }
    }
}