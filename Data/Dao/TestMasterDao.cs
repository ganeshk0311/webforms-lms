using FlmWebFormsApp.Data.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace FlmWebFormsApp.Data.Dao
{
    public class TestMasterDao : LmsDao
    {
        public override DataTable GetAllRecords()
        {
            string query = "select * from testmaster";
            return GetData(query);
        }

        public override DataTable GetOneRecord(int id)
        {
            string query = "select * from testmaster where id="+id;
            return GetData(query);
        }
        public DataTable GetTestListByCourseId(int fkCourseId)
        {
            string query = "select * from testmaster where fkcourseid=" + fkCourseId;
            return GetData(query);
        }

        public override int PerformInsertUpdateDelete(dynamic model, string operation)
        {
            TestMaster test = (TestMaster)model;
            string query = "";
            if(operation == "save")
            {
                query = "insert into testmaster(testname, fkcourseid, duration, totquestions) " +
                "values('" + test.TestName + "','" + test.FkCourseId + "','" + test.Duration + "','" + test.TotQuestions + "')";

            }
            else if (operation == "update")
            {
                //change your query here

            }
            else if (operation == "delete")
            {
                //change your query here

            }
            return PerformInsertUpdateDelete(query);
        }
    }
}