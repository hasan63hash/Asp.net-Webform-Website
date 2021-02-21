using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class İLETİŞİM : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar (Mesaj_gonderen,Mesaj_mail,Mesaj_baslik,Mesaj_icerik) values (@p1,@p2,@p3,@p4)", bgl.baglantı());
            komut.Parameters.AddWithValue("@p1", txtgonderen.Text);
            komut.Parameters.AddWithValue("@p2", txtmail.Text);
            komut.Parameters.AddWithValue("@p3", txtbaslik.Text);
            komut.Parameters.AddWithValue("@p4", txticerik.Text);
            komut.ExecuteNonQuery();
            bgl.baglantı().Close();
            Response.Write("Mesajınız için TEŞEKKÜRLER.Mesajınız başarılı bir şekilde tarafıma iletilmiştir");
        }
    }
}