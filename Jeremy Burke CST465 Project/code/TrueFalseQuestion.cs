using System;
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
    [ToolboxData("<{0}:TrueFalseQuestion runat=server></{0}:TrueFalseQuestion>")]
    public class TrueFalseQuestion : CompositeControl, ITestQuestion
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
                string temp="";
                foreach (Control childb in this.Controls)
                {
                    if (childb is RadioButtonList)
                    {
                        temp = ((RadioButtonList)childb).Text;
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
            mylabel.AssociatedControlID = "uxRadioTF";
            mylabel.ID = "lblRadioTF";
            mylabel.Text = QuestionText;
            Controls.Add(mylabel);
            RadioButtonList myradiolist = new RadioButtonList();
            myradiolist.ID = "uxRadioTF";
            ListItem truebutton = new ListItem();
            ListItem falsebutton = new ListItem();
            truebutton.Value = "True";
            falsebutton.Value = "False";
            myradiolist.Items.Add(truebutton);
            myradiolist.Items.Add(falsebutton);
            Controls.Add(myradiolist);
            RequiredFieldValidator validator = new RequiredFieldValidator();
            validator.ID = "valRadioTF";
            validator.ControlToValidate = "uxRadioTF";
            validator.Text = "This field is required!";
            validator.ErrorMessage = "Please answer all questions completely";
            Controls.Add(validator);
        }
    }
}
