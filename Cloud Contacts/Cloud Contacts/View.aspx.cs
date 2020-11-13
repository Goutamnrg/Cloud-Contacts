using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Cloud_Contacts
{
    public partial class View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            string connectionString = "workstation id=Customer1.mssql.somee.com;packet size=4096;user " +
            "id=cloudadmin;pwd=123456789;data source=Customer1.mssql.somee.com;persist security info=False;initial " +
            "catalog=Customer1";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = conn;

                    cmd.CommandText = "SELECT * FROM Contacts";

                    SqlDataReader dr = cmd.ExecuteReader();

                    DataTable myData = new DataTable();

                    if (dr.Read())
                    {
                        myData.Load(dr);
                    }
                    gvContacts.DataSource = myData;
                    gvContacts.DataBind();

                }
            }



        }
    }
}