using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public class sqlsinif
    {
        public SqlConnection baglantı()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-EQ329ON;Initial Catalog=Yemek_Tarifi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}