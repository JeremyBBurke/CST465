using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Jeremy_Burke_CST465_Project.Code;

namespace Jeremy_Burke_CST465_Project
{
    public partial class MultipleChoiceQuestion : System.Web.UI.UserControl, ITestQuestion
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_Init(object sender, EventArgs e)
        {
            foreach (ListItem button in Buttons)
            {
                uxRadioAnswer.Items.Add(button);
            }
        }
        [PersistenceMode(PersistenceMode.InnerProperty)]
        public List<ListItem> Buttons
        {
            get;
            set;
        }
        public string QuestionText
        {
            get { return lblRadioAnswer.Text; }
            set { lblRadioAnswer.Text = value; }
        }
        public string Answer
        {
            get { return uxRadioAnswer.SelectedValue; }
            set { uxRadioAnswer.SelectedValue = value; }
        }

    }
}