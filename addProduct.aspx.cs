using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalFurnitureShowroom.Admin
{
    public partial class addProduct : System.Web.UI.Page

    {
        SqlConnection con = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadGridview();
            }

        }
        protected void loadGridview()
        {
            dbcon();
            String quiry = "select * from productDetails1 order by id";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(quiry, con);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

        }
        protected void DeleteInfo(object sender, CommandEventArgs e)
        {
            try
            {
                dbcon();


                SqlCommand cmd = new SqlCommand("delete productDetails1 where Id=@id", con);
                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(e.CommandArgument.ToString()));
                cmd.ExecuteNonQuery();
                lblerror.Text = "Delete Successfully";
                lblerror.ForeColor = System.Drawing.Color.Red;
                con.Close();
                loadGridview();
            }
            catch (Exception ex)
            {

            }
        }
        protected void EditInfo(object sender, CommandEventArgs e)
        {
            dbcon();
            SqlCommand cmd = new SqlCommand("select * from productDetails1 where Id=@id", con);
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(e.CommandArgument.ToString()));
            var dataReader = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dataReader);
            if (dt.Rows.Count > 0)
            {
                tbxProductName.Text = dt.Rows[0]["productName"].ToString();
                tbxDes.Text = dt.Rows[0]["productDes"].ToString();
                tbxPrice.Text = dt.Rows[0]["productPrice"].ToString();
                tbxProductQuantity.Text = dt.Rows[0]["productQuantity"].ToString();
                tbxProductId.Text = dt.Rows[0]["productId"].ToString();
            }
            else
            {

            }
            con.Close();
        }
        protected void dbcon()
        {
            String sqlcon = "Data Source=DESKTOP-778TEI8\\PRINCESQL;Initial Catalog=Shopping;Integrated Security=True";
            con = new SqlConnection(sqlcon);
            con.Open();
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            dbcon();

            SqlCommand cmd = new SqlCommand("Insert into productDetails1(productName,productDes,productPrice,productQuantity,productId)values(@Name,@Des,@Price,@Quantity,@PId)", con);
            cmd.Parameters.AddWithValue("@Name", tbxProductName.Text);
            cmd.Parameters.AddWithValue("@Des", tbxDes.Text);
            cmd.Parameters.AddWithValue("@Price", tbxPrice.Text);
            cmd.Parameters.AddWithValue("@Quantity", tbxProductQuantity.Text);
            cmd.Parameters.AddWithValue("@PId", tbxProductId.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            loadGridview();


        }

       
    }
}

    //SqlConnection con = null;

    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    if(!IsPostBack)
    //    {
    //        clear();
    //    }
    //}
    //protected void dbConnection()
    //{
    //    try
    //    {
    //        string strCon = "Data Source=DESKTOP-778TEI8\\PRINCESQL;Initial Catalog=Shopping;Integrated Security=True";
    //        con = new SqlConnection(strCon);
    //        con.Open();
    //    }catch(Exception ex)
    //    {

    //    }
    //}

    //protected void btnSave_Click(object sender, EventArgs e)
    //{
    //    dbConnection();
    //    if(!uploadFile.HasFile)
    //    {
    //        lblerror.Text = "Please insert image";
    //    }
    //    else
    //    {
    //        int length = uploadFile.PostedFile.ContentLength;
    //        byte[] pic = new byte[length];
    //        uploadFile.PostedFile.InputStream.Read(pic, 0, length);
    //    }
    //    SqlCommand cmd = new SqlCommand("insert into productDetails1(productName,productDes,productPrice,productQuantity,productId)values(@productname,@productdes,@productprice,@productquantity,@productid)", con);
    //    cmd.Parameters.AddWithValue("@productname", tbxProductName.Text);
    //    cmd.Parameters.AddWithValue("@productdes", tbxDes.Text);
    //    cmd.Parameters.AddWithValue("@productprice", tbxPrice.Text);

    //    cmd.Parameters.AddWithValue("@productquantity", tbxProductQuantity.Text);
    //    cmd.Parameters.AddWithValue("@productid", tbxProductId.Text);


    //    cmd.ExecuteNonQuery();
    //    clear();
    //    lblerror.Text = "Successfully inserted";


    //    con.Close();
    //}
    //protected void clear()
    //{
    //    lblerror.Text = "";
    //    tbxProductName.Text = tbxDes.Text = tbxPrice.Text = tbxProductQuantity.Text = tbxProductId.Text="";
    //    }
    //}



       
    

