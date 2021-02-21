<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GÜNÜNYEMEĞİ.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.GÜNÜN_YEMEĞİ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        text-align: left;
    }
    .auto-style8 {
        width: 100%;
        height: 290px;
    }
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        font-size: x-large;
    }
    .auto-style10 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style8">
    <tr>
        <td class="auto-style7">
            <strong>
            <br />

            <asp:DataList ID="DataList2" Visible = 'True' runat="server">
                <ItemTemplate>
                   
                    <strong>
                    <table class="auto-style5">
                        <tr>
                            <td class="auto-style10"><strong>
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text='<%# Eval("Gunun_yemek_ad") %>'></asp:Label>
                                </strong></td>
                        </tr>
                    </table>
                    <table class="auto-style5">
                        <tr>
                            <td><strong>
                                MALZEMELER :
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Gunun_yemek_malzeme") %>'></asp:Label>
                                </strong></td>
                        </tr>
                    </table>
                    <table class="auto-style5">
                        <tr>
                            <td>TARİF : <strong>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Gunun_yemek_tarif") %>'></asp:Label>
                                </strong></td>
                        </tr>
                    </table>
                    <table class="auto-style5">
                        <tr>
                            <td class="auto-style10"><strong>
                                <asp:Image ID="Image1" runat="server" Height="93px" Width="396px" ImageUrl="~/resimler/mucver.jpg" />
                                </strong></td>
                        </tr>
                        <tr>
                            <td><strong>
                                <asp:Label ID="Label6" runat="server" Text="Puan : "></asp:Label>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Gunun_yemek_puan") %>'></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td><strong>
                                <asp:Label ID="Label8" runat="server" Text="Tarih : "></asp:Label>
                                &nbsp;<asp:Label ID="Label9" runat="server" Text='<%# Eval("Gunun_yemek_tarih") %>'></asp:Label>
                                </strong></td>
                        </tr>
                    </table>
                    </strong>
                </ItemTemplate>
            </asp:DataList>
            </strong></td>
    </tr>
</table>
</asp:Content>
