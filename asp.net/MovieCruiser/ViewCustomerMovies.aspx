<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="ViewCustomerMovies.aspx.cs" Inherits="MovieCruiser.ViewCustomerMovies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Movies</h2>
     <asp:GridView ID="GridView3" runat="server"  CellPadding="10" GridLines="None" Font-Size="18px" BorderColor="White" BorderWidth="60px" CellSpacing="5" AutoGenerateColumns="False" HorizontalAlign="Center" Width="768px">
        <Columns>             
                <asp:BoundField DataField="MovieId"  HeaderText="MovieId"/>
        <asp:BoundField DataField="MovieTitle"  HeaderText="Title"/>
        <asp:BoundField DataField="BoxOfficeCollection"   HeaderText="BoxOffice"/>
        <asp:BoundField DataField="MovieGenre"   HeaderText="Genre"/>
        <asp:BoundField DataField="MovieActive"   HeaderText="Has Teaser"/>
        <asp:HyperLinkField DataNavigateUrlFields="MovieId" DataNavigateUrlFormatString="~\AddToFavorites.aspx?id={0}" Text ="Add To Favorites"
            HeaderText="Action" />
        </Columns>
    </asp:GridView>
</asp:Content>