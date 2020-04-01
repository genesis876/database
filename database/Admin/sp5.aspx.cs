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
    public partial class sp5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["groupworkConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                //Create the SqlCommand object
                SqlCommand cmd = new SqlCommand("customertype", con);
                //Specify that the SqlCommand is a stored procedure
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                //Add the input parameters to the command object
                cmd.Parameters.AddWithValue("@var1", Convert.ToInt16(TextBox1.Text));



                //Add the output parameter to the command object
                SqlParameter outPutParameter = new SqlParameter();
                outPutParameter.ParameterName = "@data1";
                outPutParameter.SqlDbType = System.Data.SqlDbType.VarChar;
                outPutParameter.Direction = System.Data.ParameterDirection.Output;
                outPutParameter.Size = 50000;
                cmd.Parameters.Add(outPutParameter);

               

                con.Open();
                cmd.ExecuteNonQuery();
                TextBox1.Text = "";

                //  int contractID = Convert.ToInt32(cmd.Parameters["@NewId"].Value);
                string data1 = outPutParameter.Value.ToString();
                Label1.Text = data1;

                
            }

        }
    }
}