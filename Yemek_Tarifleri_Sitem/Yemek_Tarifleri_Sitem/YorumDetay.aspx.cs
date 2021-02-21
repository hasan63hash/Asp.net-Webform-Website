﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt16(Request.QueryString["Yorum_id"]);
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select Yorum_adsoyad,Yorum_mail,Yorum_icerik,Yemek_ad from Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.Yemek_id=Tbl_Yemekler.Yemek_id where Yorum_id=@p1", bgl.baglantı());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                    TextBox2.Text = dr[1].ToString();
                    TextBox3.Text = dr[2].ToString();
                    TextBox4.Text = dr[3].ToString();
                }
                bgl.baglantı().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("update Tbl_Yorumlar set  Yorum_icerik=@p1 , Yorum_onay=@p2 where Yorum_id=@p3",bgl.baglantı());
            komut2.Parameters.AddWithValue("@p1", TextBox3.Text);
            komut2.Parameters.AddWithValue("@p2", "True");
            komut2.Parameters.AddWithValue("@p3", id);
            komut2.ExecuteNonQuery();
            bgl.baglantı().Close();
        }
    }
}