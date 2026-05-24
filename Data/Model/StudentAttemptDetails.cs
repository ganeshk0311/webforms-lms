using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FlmWebFormsApp.Data.Model
{
    public class StudentAttemptDetails
    {
        public int Id { get; set; }
        public int FkStudentId { get; set; }
        public int FkTestQuestionId { get; set; }
        public int SelectedAns { get; set; }
        public bool IsCorrect { get; set; }
    }
}