﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jeremy_Burke_CST465_Project.Code
{
    [DefaultProperty("Text")]
    [ToolboxData("<{0}:ShortTextQuestion runat=server></{0}:ShortTextQuestion>")]
    public class ShortTextQuestion : CompositeControl,ITestQuestion
    {
        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Localizable(true)]
        public string QuestionText
        {
            get
            {
                String s = (String)ViewState["Text"];
                return ((s == null) ? String.Empty : s);
            }

            set
            {
                ViewState["Text"] = value;
            }
        }
        public string Answer
        {
            get
            {
                string temp = "";
                foreach (Control childa in this.Controls)
                {
                    if (childa is TextBox)
                    {
                        temp = ((TextBox)childa).Text;
                    }
                }
                return temp;
            }
            set
            {
                string temp2 = value;
            }
        }

        protected override void RenderContents(HtmlTextWriter output)
        {
            base.RenderContents(output);
        }
        protected override void CreateChildControls()
        {
            base.CreateChildControls();
            Label mylabel = new Label();
            mylabel.AssociatedControlID = "uxAnswerBox";
            mylabel.ID = "lblAnswerBox";
            mylabel.Text = QuestionText;
            Controls.Add(mylabel);
            TextBox mytextbox = new TextBox();
            mytextbox.ID = "uxAnswerBox";
            Controls.Add(mytextbox);
            RequiredFieldValidator validator = new RequiredFieldValidator();
            validator.ID = "valAnswerBox";
            validator.ControlToValidate = "uxAnswerBox";
            validator.Text = "This field is required!";
            validator.ErrorMessage = "Please answer all questions completely";
            Controls.Add(validator);
        }
    }
}
