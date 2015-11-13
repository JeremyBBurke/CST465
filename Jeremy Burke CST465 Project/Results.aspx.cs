using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Jeremy_Burke_CST465_Project.Code;

namespace Jeremy_Burke_CST465_Project
{
    public partial class Results : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["QuestionList"] != null)
            {
                List<QuestionAnswer> SavedQuestions = (List<QuestionAnswer>)Session["QuestionList"];
                //uxResults.DataSource = SavedQuestions;
                //uxResults.DataBind();
            }
        }
    }
}