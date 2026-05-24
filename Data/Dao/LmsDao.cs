using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace FlmWebFormsApp.Data.Dao
{
    public abstract class LmsDao : ILmsDao
    {
        private readonly string _connString;
        protected SqlConnection con;
        protected SqlCommand cmd; //insert,update,delete
        protected SqlDataAdapter da;//select

        public LmsDao()
        {
            _connString = "Server=GANESH\\MYSQLSERVER5;Initial Catalog=LMS;Integrated Security=True;TrustServerCertificate=True;";
            con = new SqlConnection(_connString);            
        }

        protected int PerformInsertUpdateDelete(string query)
        {
            int rowsAffected = 0;
            try
            {
                cmd = new SqlCommand(query, con);
                con.Open();
                rowsAffected = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error in executing the query :: " + ex.Message);
            }
            finally {
                if (con.State.ToString() == "Open") con.Close();
            }
            return rowsAffected;
        }
        protected DataTable GetData(string query)
        {
            DataTable dt = null;
            try
            {
                da = new SqlDataAdapter(query, con);
                dt = new DataTable();
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error in executing the query :: " + ex.Message);
            }
            return dt;
        }

        public abstract int PerformInsertUpdateDelete(dynamic model, string operation);
        public abstract DataTable GetAllRecords();
        public abstract DataTable GetOneRecord(int id);

    }
}