using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class Tarif_Öner : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Tarifler (Tarif_ad,Tarif_malzeme,Tarif_resim,Tarif_yapilis,Tarif_sahip,Tarif_sahip_mail) values (@t1,@t2,@t3,@t4,@t5,@t6)", bgl.baglantı());
            komut.Parameters.AddWithValue("@t1", TxtTarifad.Text);
            komut.Parameters.AddWithValue("@t2", TxtMalzemeler.Text);
            komut.Parameters.AddWithValue("@t3",FileUpload1.FileName);
            komut.Parameters.AddWithValue("@t4", TxtYapilis.Text);
            komut.Parameters.AddWithValue("@t5", TxtTarifOneren.Text);
            komut.Parameters.AddWithValue("@t6", Txtmail.Text);
            komut.ExecuteNonQuery();
            bgl.baglantı().Close();
            Response.Write("Tarifiniz Alınmıştır");

        }
    }
}