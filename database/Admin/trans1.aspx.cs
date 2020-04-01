using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace database
{
    public partial class trans1 : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("RecordOrder", con);
                //Specify that the SqlCommand is a stored procedure
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                //Add the input parameters to the command object
                cmd.Parameters.AddWithValue("@Cust_ID", TextBox1.Text);
                cmd.Parameters.AddWithValue("@name", TextBox2.Text);
                cmd.Parameters.AddWithValue("@clientRefID", TextBox3.Text);
                cmd.Parameters.AddWithValue("@email", TextBox4.Text);
                cmd.Parameters.AddWithValue("@discount", TextBox5.Text);
                cmd.Parameters.AddWithValue("@parish", TextBox6.Text);
                cmd.Parameters.AddWithValue("@contact_num", TextBox7.Text);
                cmd.Parameters.AddWithValue("@street_num", TextBox8.Text);
                cmd.Parameters.AddWithValue("@street_name", TextBox9.Text);
                cmd.Parameters.AddWithValue("@Post_ID", TextBox10.Text);
                cmd.Parameters.AddWithValue("@Charges", TextBox11.Text);
                cmd.Parameters.AddWithValue("@delivery_status", TextBox12.Text);
                cmd.Parameters.AddWithValue("@delivery_time_cate ", TextBox13.Text);
                cmd.Parameters.AddWithValue("@recieve_date", Convert.ToDateTime(TextBox14.Text));
                cmd.Parameters.AddWithValue("@emp_ID", TextBox15.Text);

                con.Open();
                cmd.ExecuteNonQuery();

                TextBox1.Text="";
                 TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
                TextBox11.Text = "";
                TextBox12.Text = "";
                 TextBox13.Text = "";
                TextBox14.Text = "";
                TextBox15.Text = "";

            }
        }
    }
}