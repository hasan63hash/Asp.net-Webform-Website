<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Yorumlar" %>
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
                    <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click1" Text="+" Width="30px" />
                    &nbsp;&nbsp; </strong> </td>
                <td class="auto-style13">
                    <strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </strong>
                </td>
                <td class="auto-style9"><strong>ONAYLANAN YORUM LİSTESİ</strong></td>
            </tr>
        </table>
        <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text='<%# Eval("Yorum_adsoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                          <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/iconlar/delete1.jpg" Width="30px" /> 
                        </td>
                        <td class="auto-style8">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/update.jpg" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" margin-top="15px" CssClass="auto-style8">
        <table class="auto-style5">
            <tr>
                <td class="auto-style12">
                    <strong>
                    <asp:Button ID="Button3" runat="server" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                    &nbsp;&nbsp; </strong> </td>
                <td class="auto-style13">
                    <strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style11" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong>
                </td>
                <td class="auto-style9"><strong>ONAYLANMAYAN YORUM LİSTESİ</strong></td>
            </tr>
        </table>
        </asp:Panel>
     <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text='<%# Eval("Yorum_adsoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                          <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/iconlar/delete1.jpg" Width="30px" /> 
                        </td>
                        <td class="auto-style8">
                          <a href="YorumDetay.aspx?Yorum_id=<%# Eval("Yorum_id") %>"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/update.jpg" Width="30px" /></a> 
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
