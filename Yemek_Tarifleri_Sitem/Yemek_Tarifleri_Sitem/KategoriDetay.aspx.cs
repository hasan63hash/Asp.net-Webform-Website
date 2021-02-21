using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlsinif snf = new sqlsinif();
        int kategoriid;
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Convert.ToInt16(Request.QueryString["Kategori_id"]);
            SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler  where Kategori_id=@p1", snf.baglantı());
            komut.Parameters.AddWithValue("@p1", kategoriid);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}