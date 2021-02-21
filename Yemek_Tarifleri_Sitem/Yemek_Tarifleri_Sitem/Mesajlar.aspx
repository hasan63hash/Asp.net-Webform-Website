<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            text-align: left;
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
                    <strong>
                    <asp:Button ID="Button1" runat="server" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    &nbsp;&nbsp; </strong> </td>
                <td class="auto-style13">
                    <strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong>
                </td>
                <td class="auto-style9"><strong>MESAJ LİSTESİ</strong></td>
            </tr>
        </table>
        <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text='<%# Eval("Mesaj_gonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/indir12.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Panel>
</asp:Content>
