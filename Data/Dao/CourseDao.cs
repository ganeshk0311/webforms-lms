using FlmWebFormsApp.Data.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace FlmWebFormsApp.Data.Dao
{
    public class CourseDao : LmsDao
    {
        public override DataTable GetAllRecords()
        {
            string query = "select '0' as id, 'Select a Course' as coursename " +
                            "union select id, coursename from coursemaster";
            return GetData(query);
        }

        public override DataTable GetOneRecord(int id)
        {
            throw new NotImplementedException();
        }

        public override int PerformInsertUpdateDelete(dynamic model, string operation)
        {
            CourseMaster cm = (CourseMaster)model;
            string query = "";
            if (operation.ToLower() == "save")
            {
                query = "insert into coursemaster (coursename, description, modules, duration) " +
                    "values('"+cm.CourseName+"','"+cm.Description+"','"+cm.Modules+"','"+cm.Duration+"')";
            }
            else if (operation.ToLower() == "update")
            {

            }
            else if (operation.ToLower() == "delete")
            {

            }
            else {
                return 0;
            }
            return base.PerformInsertUpdateDelete(query);
        }
    }
}