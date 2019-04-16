using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalFurnitureShowroom.Admin
{
    public partial class adminLogin : System.Web.UI.Page
    {
        SqlConnection con = null;
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            logIn();
        }
        protected void dbConnection()
        {
            try
            {
                string strCon = "Data Source=DESKTOP-778TEI8\\PRINCESQL;Initial Catalog=Shopping;Integrated Security=True";
                con = new SqlConnection(strCon);
                con.Open();
            }
            catch(Exception ex)
            {

            }
        }
        protected void logIn()
        {
            i = 0;
            dbConnection();
            string query= "select * from adminlogin where username='"+tbxUsername.Text+"' and password='"+tbxPass.Text+"'";
            DataTable dt = new DataTable();
            SqlDataAdapter ad = new SqlDataAdapter(query,con);
            ad.Fill(dt);
            i = int.Parse(dt.Rows.Count.ToString());
           if(i==1)
            {
                Response.Redirect("addProduct.aspx");
            }
            else
            {
                lblError.Text = "Your entered invalid username or password";
            }

        }
    }
}