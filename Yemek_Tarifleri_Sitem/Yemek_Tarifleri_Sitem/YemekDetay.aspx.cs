using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        int yemekid;
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Convert.ToInt16(Request.QueryString["Yemek_id"]);
            
            SqlCommand komut = new SqlCommand("select Yemek_ad from Tbl_Yemekler  where Yemek_id=@p1", bgl.baglantı());
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Label3.Text = dr.GetString(0);
            }
            dr.Close();
            bgl.baglantı().Close();

            SqlCommand komut2 = new SqlCommand("select * from Tbl_Yorumlar where Yemek_id=@p2", bgl.baglantı());
            komut2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader dr2 = komut2.ExecuteReader();
          
            DataList2.DataSource = dr2;
            DataList2.DataBind();
            
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (Yorum_adsoyad,Yorum_mail,Yorum_icerik,Yemek_id) values (@p1,@p2,@p3,@p4)", bgl.baglantı());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox4.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);
            komut.ExecuteNonQuery();
            bgl.baglantı().Close();
            Response.Write("Yorumunuz için TEŞEKKÜRLER yorumunuz alınmıştır.");

        }
    }
}