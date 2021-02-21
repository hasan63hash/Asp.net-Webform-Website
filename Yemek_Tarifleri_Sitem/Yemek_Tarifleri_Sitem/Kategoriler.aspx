<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        background-color: #CCCCCC;
    }
    .auto-style9 {
        text-align: right;
    }
    .auto-style10 {
        font-size: large;
    }
        .auto-style11 {
            font-size: large;
            margin-left: 0px;
        }
        .auto-style12 {
            width: 40px;
        }
        .auto-style13 {
            width: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
        <table class="auto-style5">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    &nbsp;&nbsp; </td>
                <td class="auto-style13">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                </td>
                <td><strong>KATEGORİ LİSTESİ</strong></td>
            </tr>
        </table>
        <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text='<%# Eval("Kategori_ad") %>'></asp:Label>
                        </td>
                        <td class="auto-style9">
                          <a href="Kategoriler.aspx?Kategori_id=<%# Eval("Kategori_id") %>&islem=sil"> <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/iconlar/delete1.jpg" Width="30px" /></a> 
                        </td>
                        <td class="auto-style9">
                           <a href="KategoriDuzenle.aspx?Kategori_id=<%# Eval("Kategori_id") %>"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/update.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
         <table class="auto-style5">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button3" runat="server" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                    &nbsp;&nbsp; </td>
                <td class="auto-style13">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style11" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td><strong>KATEGORİ EKLEME</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style5">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Kategori-AD</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kategori-Resim</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="EKLE" />
                </td>
            </tr>
        </table>

    </asp:Panel>
    
</asp:Content>
