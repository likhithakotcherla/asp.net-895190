<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="EditMovie.aspx.cs" Inherits="MovieCruiser.EditMovie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>
        
        Edit Movie</h3>
   
    <formview>
      <div class="edittitle">
         <asp:Label   runat="server" >Title</asp:Label><br />
          <asp:TextBox ID="txtTitle" columns="80"  runat="server">Title Field</asp:TextBox>
        </div>  
        
    <div class="formelements">
         <asp:Label  runat="server" >Gross()</asp:Label><br />
         <asp:TextBox ID="txtgross" cssclass="textbox"  runat="server"></asp:TextBox>
     </div>
    <div class="formelements">

            <asp:Label  runat="server" >Active</asp:Label><br />
            <asp:RadioButton ID="RadioButton1"  cssclass="radio" Text="Yes" checked="true" runat="server" ViewStateMode="Disabled" GroupName="active" />
            <asp:RadioButton ID="RadioButton2"  cssclass="radio" Text="No" runat="server" GroupName="active" />
     </div>
    <div class="formelements">
        
            <asp:Label  runat="server">Date Of Launch</asp:Label><br />
            <asp:TextBox ID="txtDateOfLaunch" cssclass="textbox" runat="server"></asp:TextBox>
    </div>
            
        <asp:Label style="float:left;margin:35px 10px 0px 100px;" runat="server">Genre</asp:Label><br /><br /><br />
      <asp:DropDownList style="float:left;margin:0px 10px 0px 75px;" ID="DropDownList1" runat="server" >
          
          <asp:ListItem>Superhero</asp:ListItem>
          <asp:ListItem>Science Fiction</asp:ListItem>
          <asp:ListItem>Romance</asp:ListItem>
          <asp:ListItem>Comedy</asp:ListItem>
          <asp:ListItem>Adventure</asp:ListItem>
          <asp:ListItem>Thriller</asp:ListItem>
      </asp:DropDownList>

      <br /><br /><br />
        
        &ensp;&ensp;&ensp;&ensp;<asp:CheckBox Checked="true" ID="CheckBox1" runat="server" />
        <asp:Label runat="server">HasTeaser</asp:Label><br /><br />
        &ensp;&ensp;&ensp;&ensp;<asp:Button runat="server" Text="Save" ID="SubmitForm" OnClick="Submit_Form" BackColor="DarkBlue"  ForeColor="White"/>
        <br /><br /><br /><br />
        </formview>

    
</asp:Content>