<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="ViewFavorites.aspx.cs" Inherits="MovieCruiser.ViewFavorites" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Favorites</h2>
        <asp:GridView ID="Favoritelist" runat="server"  CellPadding="10" GridLines="None" Font-Size="18px" BorderColor="White" BorderWidth="60px" CellSpacing="5" AutoGenerateColumns="False" HorizontalAlign="Center">
        <Columns>    
             
        <asp:BoundField DataField="MovieTitle"  HeaderText="Title"/>
        <asp:BoundField DataField="BoxOfficeCollection"   HeaderText="BoxOffice"/>
        <asp:BoundField DataField="MovieGenre"   HeaderText="Genre"/>
        <asp:HyperLinkField DataNavigateUrlFields="MovieId" DataNavigateUrlFormatString="~\RemoveFavorites.aspx?id={0}" Text ="Delete"
            HeaderText="Action" />
        </Columns>
    </asp:GridView>
   
    <p class="auto-style1">
   
        &nbsp;</p>
    <p class="auto-style1">
   
    <br />
    </p>
</asp:Content>