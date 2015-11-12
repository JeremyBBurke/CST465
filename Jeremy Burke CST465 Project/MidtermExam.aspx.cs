using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Jeremy_Burke_CST465_Project.Code;

namespace Jeremy_Burke_CST465_Project
{
    public partial class MidtermExam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void uxSubmit_Exam(object sender, EventArgs e)
        {
            List<QuestionAnswer> questionList = new List<QuestionAnswer>();
            foreach (Control c in uxQuestions.Controls)
            {
                if (c is ITestQuestion)
                {
                    ITestQuestion question = c as ITestQuestion;
                    QuestionAnswer qa = new QuestionAnswer();
                    qa.QuestionText = question.QuestionText;
                    qa.Answer = question.Answer;
                    questionList.Add(qa);
                }
            }
            Session["QuestionList"] = questionList;
            Response.Redirect("Results.aspx");
        }
    }
}