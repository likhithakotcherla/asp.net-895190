<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewAdminMovies.aspx.cs" Inherits="MovieCruiser.ViewAdminMovies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Movies</h3><br />
    <asp:GridView ID="GridView1" runat="server"  CellPadding="5" GridLines="None" Font-Size="18px" BorderColor="White" BorderWidth="30px" CellSpacing="5" AutoGenerateColumns="False" HorizontalAlign="Center">
        <Columns>     
           
             <asp:BoundField DataField="MovieId"  HeaderText="MovieId"/>
        <asp:BoundField DataField="MovieTitle"  HeaderText="Title"/>
        <asp:BoundField DataField="BoxOfficeCollection"   HeaderText="BoxOffice"/>
        <asp:BoundField DataField="MovieActive"   HeaderText="Active"/>
        <asp:BoundField DataField="DateOfLaunch"   HeaderText="DateOfLaunch"/>
        <asp:BoundField DataField="MovieGenre"   HeaderText="Genre"/>      
        <asp:BoundField DataField="HasTeaser"   HeaderText="Has Teaser"/>
        <asp:HyperLinkField DataNavigateUrlFields="MovieId" DataNavigateUrlFormatString="~\EditMovie.aspx?id={0}" Text ="Edit"
            HeaderText="Action" />
        </Columns>
    </asp:GridView><br /><br />
</asp:Content>