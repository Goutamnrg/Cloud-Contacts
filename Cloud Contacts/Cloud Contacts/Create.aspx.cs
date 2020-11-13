using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

namespace Cloud_Contacts
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {


                string connectionString = "workstation id=Customer1.mssql.somee.com;packet size=4096;user id=cloudadmin;pwd=123456789;data source=Customer1.mssql.somee.com;persist security info=False;initial catalog=Customer1";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Connection = conn;


                        ////Delete
                        //cmd.CommandText = "DELETE FROM Contacts WHERE EmailAddress = @EmailAddress";  

                        //cmd.Parameters.AddWithValue("@EmailAddress", txtEmail);


                        //// Update
                        //cmd.CommandText = "UPDATE Contacts SET COLUMN = @VALUE, COLUMN3 = " +
                        //    "@VALUE3 WHERE EmailAddress = @EmailAddress";

                        //cmd.Parameters.AddWithValue("@EmailAddress", txtEmail);


                        //Insert
                        cmd.CommandText = "INSERT INTO Contacts (FullName, PhoneNumber, EmailAddress) " +
                            "VALUES (@FullName, @PhoneNumber, @EmailAddress)";

                        cmd.Parameters.AddWithValue("@FullName", txtName.Text);
                        cmd.Parameters.AddWithValue("@PhoneNumber", txtNumber.Text);
                        cmd.Parameters.AddWithValue("@EmailAddress", txtEmail.Text);

                        // execute query
                        cmd.ExecuteNonQuery();

                        lblErrorMessage.Text = "Successful";
                        lblErrorMessage.ForeColor = Color.Green;

                    }
                }
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = ex.Message;
                lblErrorMessage.ForeColor = Color.Red;
            }


        }
    }
}