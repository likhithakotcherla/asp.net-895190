<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="AddToFavorites.aspx.cs" Inherits="MovieCruiser.AddToFavorites" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Favorites</h2>
    <h3 style="color:green;padding-left:200px;">Movie Added to Favorites Successfully</h3>
    <asp:GridView ID="AddToFavorite" runat="server"  CellPadding="10" GridLines="None" Font-Size="18px" BorderColor="White" BorderWidth="60px" CellSpacing="5" AutoGenerateColumns="False">
        <Columns>                 
        <asp:BoundField DataField="MovieTitle"  HeaderText="Title"/>
        <asp:BoundField DataField="BoxOfficeCollection"   HeaderText="BoxOffice"/>
        <asp:BoundField DataField="MovieGenre"   HeaderText="Genre"/>
        <asp:BoundField DataField="MovieActive"   HeaderText="Has Teaser"/>
            <asp:HyperLinkField DataNavigateUrlFields="MovieId" DataNavigateUrlFormatString="~\AddToFavorites.aspx?id={0}" Text ="Add To Favorites"
            HeaderText="Action" />
        </Columns>
    </asp:GridView>
    
    <br /><br />

</asp:Content>