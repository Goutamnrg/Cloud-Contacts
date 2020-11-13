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
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {


                string connectionString = "workstation id=Customer1.mssql.somee.com;packet size=4096;user " +
                    "id=cloudadmin;pwd=123456789;data source=Customer1.mssql.somee.com;persist " +
                    "security info=False;initial catalog=Customer1";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Connection = conn;
                        cmd.CommandText = "SELECT * FROM Users Where Username = '" + txtUsername.Text
                            + "' AND Password = '" + txtPassword.Text + "'";

                        SqlDataReader dr = cmd.ExecuteReader();

                        if (dr.Read())
                        {

                            lblErrorMessage.Text = "Login success";
                            lblErrorMessage.ForeColor = Color.Green;


                            Response.Redirect("Create.aspx");
                        }
                        else
                        {
                            lblErrorMessage.Text = "Invalid UserName and Password";
                            lblErrorMessage.ForeColor = Color.Red;



                        }

                        dr.Close();

                    }
                }
            }

            catch (Exception ex)
            {
                lblErrorMessage.Text = ex.Message;
                lblErrorMessage.ForeColor = Color.Red;
            }
        }

        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {

        }
    }
}