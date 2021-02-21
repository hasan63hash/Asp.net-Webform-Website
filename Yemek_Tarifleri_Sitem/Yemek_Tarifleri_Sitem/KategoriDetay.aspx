<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            width: 100%;
        }
        .auto-style7 {
            background-color: #FFFFFF;
        }
        .auto-style6 {
            font-size: x-large;
            color: #0000FF;
        }
        .auto-style8 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style5">
            <tr>
                <td class="auto-style7"><a href="YemekDetay.aspx?Yemek_id=<%# Eval("Yemek_id") %>"><strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text='<%# Eval("Yemek_ad") %>'></asp:Label>
                    </strong></a></td>
            </tr>
            <tr>
                <td><strong>Malzemeler :</strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Yemek_malzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Yemek Tarifi :</strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yemek_tarifi") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Eklenme Tarihi :</strong>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Yemek_tarih") %>' CssClass="auto-style8"></asp:Label>
                        &nbsp; <strong>Puan :
                         <asp:Label ID="Label7" runat="server" Text='<%# Eval("Yemek_puan") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td style="border-bottom-style: dashed; border-bottom-width: inherit; border-bottom-color: #000000">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
