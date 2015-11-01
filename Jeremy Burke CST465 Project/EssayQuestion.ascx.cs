using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Jeremy_Burke_CST465_Project.Code;

namespace Jeremy_Burke_CST465_Project
{
    public partial class EssayQuestion : System.Web.UI.UserControl, ITestQuestion
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string QuestionText
        {
            get { return lblAnswer.Text; }
            set { lblAnswer.Text = value; }
        }
        public string Answer
        {
            get { return uxAnswer.Text; }
            set { uxAnswer.Text = value; }
        }
    }
}