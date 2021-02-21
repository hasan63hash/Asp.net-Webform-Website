<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="İLETİŞİM.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.İLETİŞİM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
        height: 149px;
    }
    .auto-style6 {
        font-size: x-large;
        height: 31px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
    <table class="auto-style5">
    <tr>
        <td class="auto-style6" colspan="2">MESAJ PANELİ</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Ad-Soyad : </td>
        <td>
            <asp:TextBox ID="txtgonderen" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Mail Adresi : </td>
        <td>
            <asp:TextBox ID="txtmail" runat="server" AutoCompleteType="Email" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Mesaj Konu : </td>
        <td>
            <asp:TextBox ID="txtbaslik" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Mesajınız : </td>
        <td>
            <asp:TextBox ID="txticerik" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="Gönder" Width="100px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
   
</asp:Content>
