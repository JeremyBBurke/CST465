using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Jeremy_Burke_CST465_Project.Code
{
    public interface ITestQuestion
    {
        string QuestionText
        {
            get;
            set;
        }
        string Answer
        {
            get;
            set;
        }
    }
}
