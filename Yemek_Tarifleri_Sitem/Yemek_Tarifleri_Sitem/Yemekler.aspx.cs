using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class Yemekler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string islem = "";
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;
           
            // yemek listesi
            SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler", bgl.baglantı());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            //KATEGORİ LİSTESİ
            if (Page.IsPostBack == false) {
                SqlCommand komut2 = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglantı());
                id = Convert.ToInt16(Request.QueryString["Yemek_id"]);
                islem = Request.QueryString["islem"];
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "Kategori_ad";
                DropDownList1.DataValueField = "Kategori_id";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
               

            }
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("delete from Tbl_Yemekler where Yemek_id=@p1", bgl.baglantı());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglantı().Close();
            }

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
            SqlCommand komut = new SqlCommand("insert into  Tbl_Yemekler (Yemek_ad,Yemek_malzeme,Yemek_tarifi,Kategori_id) values (@p1,@p2,@p3,@p4)", bgl.baglantı());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglantı().Close();
            Response.Write("ekleme başarılı");
            // kategori güncelleme

            SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set Kategori_adet=Kategori_adet+1 where Kategori_id=@p1", bgl.baglantı());
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglantı().Close();
        }
    }
}