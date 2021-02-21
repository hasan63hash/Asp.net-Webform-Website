using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        int id;
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Convert.ToInt16(Request.QueryString["Kategori_id"]);
                islem = Request.QueryString["islem"];
            }
            SqlCommand komut = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglantı());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            //silem işlemi
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete from Tbl_Kategoriler where Kategori_id=@p1", bgl.baglantı());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglantı().Close();
            }
            Panel2.Visible = false;
            Panel4.Visible = false;
                
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Kategoriler (Kategori_ad) values (@p1)", bgl.baglantı());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
            bgl.baglantı().Close();
            Response.Write("Kategori ekleme işlemi başarılı bir şekilde gerçekleştirildi");
        }
    }
}