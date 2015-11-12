using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace Jeremy_Burke_CST465_Project
{
    public partial class Assignment4Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
 
        }
        protected void uxSubmit_Click(Object sender, EventArgs e)
        {
            StringBuilder mystrings = new StringBuilder();
            mystrings.Append(uxEssayQuestion.QuestionText).Append(" : ").Append(uxEssayQuestion.Answer).Append("<br />");
            mystrings.Append(uxMultipleChoiceQuestion.QuestionText).Append(" : ").Append(uxMultipleChoiceQuestion.Answer).Append("<br />");
            foreach (Control childa in uxShortText.Controls)
            {
                if (childa is TextBox)
                {
                    mystrings.Append(uxShortText.QuestionText).Append(" : ").Append(((TextBox)childa).Text).Append("<br />");
                }
            }
            foreach (Control childb in uxTF.Controls)
            {
                if (childb is RadioButtonList)
                {
                    mystrings.Append(uxTF.QuestionText).Append(" : ").Append(((RadioButtonList)childb).Text).Append("<br />");
                }
            }
            LitAnswers.Text = mystrings.ToString();
        }
    }
}