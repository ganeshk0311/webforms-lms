using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FlmWebFormsApp.Data.Model
{
    public class TestMaster
    {
        public int Id { set; get; }
        public int FkCourseId { set; get; }
        public string TestName { set; get; }
        public int Duration { set;get; } // Duration in minutes
        public int TotQuestions { set; get; }

    }
}