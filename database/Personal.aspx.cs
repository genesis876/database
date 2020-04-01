using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace database
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=LAPTOP-8UC2HRMR;Initial Catalog=groupwork;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("INSERT INTO [Personal] values('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + DropDownList1.SelectedValue + "', '" + DropDownList2.SelectedValue + "')", con);



            con.Open();
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();

            TextBox1.Text = "";
            TextBox2.Text = "";

        }
    }
}