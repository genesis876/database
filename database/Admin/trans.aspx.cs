using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace database
{
    public partial class trans : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("numdelivery", con);
                //Specify that the SqlCommand is a stored procedure
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                //Add the input parameters to the command object
                cmd.Parameters.AddWithValue("@Post_ID", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Charges", TextBox2.Text);
                cmd.Parameters.AddWithValue("@delivery_status", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@delivery_time_cate", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@recieve_date", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Cust_ID", TextBox6.Text);
                cmd.Parameters.AddWithValue("@emp_ID", TextBox7.Text);
                cmd.Parameters.AddWithValue("@startofweek", TextBox10.Text);
                cmd.Parameters.AddWithValue("@Delivery_unit", DropDownList3.SelectedValue);
                cmd.Parameters.AddWithValue("@supervisor", TextBox9.Text);


                con.Open();
                cmd.ExecuteNonQuery();

                TextBox1.Text = "";
                TextBox2.Text = "";
               
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                
                TextBox9.Text = "";
                TextBox10.Text = "";
            }
            }
    }
}