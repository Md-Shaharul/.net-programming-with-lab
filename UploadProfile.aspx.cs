using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalFurnitureShowroom.User
{
    public partial class UploadProfile : System.Web.UI.Page
    {
        SqlConnection con = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblErrorMessage.Visible = false;
                hyperLink.Visible = false;
               
            }

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string strCon = "Data Source=DESKTOP-778TEI8\\PRINCESQL;Initial Catalog=Player;Integrated Security=True";
            con = new SqlConnection(strCon);


            HttpPostedFile postedFile = uploadFile.PostedFile;
            string fileName = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(fileName);
            int fileSize = postedFile.ContentLength;
            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".gif")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binary = new BinaryReader(stream);
                byte[] bytes = binary.ReadBytes((int)stream.Length);

                SqlCommand cmd = new SqlCommand("spUploadImage", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter parameter = new SqlParameter()
                {
                    ParameterName = "@name",
                    Value = fileName

                };
                cmd.Parameters.Add(parameter);
                SqlParameter parameterSize = new SqlParameter()
                {
                    ParameterName = "@size",
                    Value = fileSize

                };
                cmd.Parameters.Add(parameterSize);
                SqlParameter parameterImage = new SqlParameter()
                {
                    ParameterName = "@imageData",
                    Value = bytes

                };
                cmd.Parameters.Add(parameterImage);
                SqlParameter paranewid = new SqlParameter()
                {
                    ParameterName = "@newId",
                    Value = -1,
                    Direction = ParameterDirection.Output

                };
                con.Open();
                cmd.Parameters.Add(paranewid);

                cmd.ExecuteNonQuery();
                con.Close();

                lblErrorMessage.Visible = true;
                lblErrorMessage.Text = "upload successfull";
                lblErrorMessage.ForeColor = System.Drawing.Color.Green;
                hyperLink.Visible = true;
                hyperLink.NavigateUrl = ("~/WebForm2.aspx?id=" + cmd.Parameters["@newId"].Value.ToString());
                

            }

            else
            {
                lblErrorMessage.Visible = true;
                lblErrorMessage.Text = "Only jpg,png and gif file can be uploaded";
                lblErrorMessage.ForeColor = System.Drawing.Color.Red;
                hyperLink.Visible = false;
            }

        }
    }
    }
