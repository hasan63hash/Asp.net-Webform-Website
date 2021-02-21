using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt16(Request.QueryString["Yemek_id"]);
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where Yemek_id=@p1", bgl.baglantı());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                bgl.baglantı().Close();
            }
            if (Page.IsPostBack == false)
            {
                SqlCommand komut2 = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglantı());

                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "Kategori_ad";
                DropDownList1.DataValueField = "Kategori_id";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // yemek gücelleme
            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set Yemek_ad=@p1,Yemek_malzeme=@p2,Yemek_tarifi=@p3,Kategori_id=@p4 where Yemek_id=@p5", bgl.baglantı());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", id);
            komut.ExecuteNonQuery();
            bgl.baglantı().Close();
            Response.Write("Güncelleme Başarılı");

           
        }
    }
}