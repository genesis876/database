using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace database
{
    public partial class sp3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = "";


            Label2.Text = "";

            Label3.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["groupworkConnectionString"].ConnectionString;
            cmd.Connection = conn;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "customerpackages2";
           
            
                //Create the SqlCommand object
               // SqlCommand cmd = new SqlCommand("customerpackages2", con);
                //Specify that the SqlCommand is a stored procedure
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                //Add the input parameters to the command object
                cmd.Parameters.AddWithValue("@Post_ID", TextBox1.Text);



                //Add the output parameter to the command object
                /*The 3 output parameters*/
                cmd.Parameters.Add("@Cust_ID", SqlDbType.Int);
                cmd.Parameters["@Cust_ID"].Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@name", SqlDbType.VarChar,20);
                cmd.Parameters["@name"].Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@delivery_status", SqlDbType.VarChar, 20);
                cmd.Parameters["@delivery_status"].Direction = ParameterDirection.Output;
            /*End*/

            try
            {
                conn.Open();
                //Executing the SP

                int i = cmd.ExecuteNonQuery();
                //Storing the output parameters value in 3 different variables.
                string productName = Convert.ToString(cmd.Parameters["@Cust_ID"].Value);
                Label1.Text = productName;
                string unitPrice = Convert.ToString(cmd.Parameters["@name"].Value);
                Label2.Text = unitPrice;
                string quantityPerUnit = Convert.ToString(cmd.Parameters["@delivery_status"].Value);
                Label3.Text = quantityPerUnit;
            }
            catch (Exception ex)
            {
            }
            finally
            {
                conn.Close();
                TextBox1.Text = "";
            }
        }
    } }