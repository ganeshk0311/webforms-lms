using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FlmWebFormsApp.Data.Model
{
    public class TestQuestions
    {
        public int Id { get; set; }
        public int FkTestId { get; set; }
        public string Question { get; set; }
        public string Answer1 { get; set; }
        public string Answer2 { get; set; }
        public string Answer3 { get; set; }
        public string Answer4 { get; set; }
        public string CorrectAns { get; set; }
        public string Explanation { get; set; }
    }
}