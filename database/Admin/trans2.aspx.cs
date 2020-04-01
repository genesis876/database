using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace database
{
    public partial class trans2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["groupworkConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                //Create the SqlCommand object
                SqlCommand cmd = new SqlCommand("numemployee", con);
                //Specify that the SqlCommand is a stored procedure
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                //Add the input parameters to the command object
                cmd.Parameters.AddWithValue("@emp_ID", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Delivery_unit", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@supervisor", TextBox3.Text);
               


                con.Open();
                cmd.ExecuteNonQuery();

                TextBox1.Text = "";
                
                TextBox3.Text = "";
               
            }
        }
    }
}