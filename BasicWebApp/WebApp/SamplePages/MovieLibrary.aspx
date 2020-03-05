<%@ Page Title="Movie Library" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MovieLibrary.aspx.cs" Inherits="WebApp.SamplePages.MovieLibrary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Movie Library</h1>

<div class="row">
        <div class="col-md-6">
            <fieldset class="form-horizontal">
                <legend>Fill out the form below to add information on the movie for your movie library</legend>
                <asp:Label ID="Label1" runat="server" Text="Title" AssociatedControlID="MovieTitle"></asp:Label>
                <asp:TextBox ID="MovieTitle" runat="server"></asp:TextBox>
                                
                <asp:Label ID="Label2" runat="server" Text="Year" AssociatedControlID="MovieYear"></asp:Label>
                <asp:TextBox ID="MovieYear" runat="server"></asp:TextBox>
                
                <asp:Label ID="Label3" runat="server" Text="Media" AssociatedControlID="MediaType"></asp:Label>
                <asp:CheckBoxList ID="MediaType" runat="server">
                    <asp:ListItem Value="1">DVD</asp:ListItem>
                    <asp:ListItem Value="2">VHS</asp:ListItem>
                    <asp:ListItem Value="3">File</asp:ListItem>
                </asp:CheckBoxList>

                <asp:Label ID="Label4" runat="server" Text="Rating" AssociatedControlID="MovieAdvisory"></asp:Label>
                <asp:RadioButtonList ID="MovieAdvisory" runat="server">
                    <asp:ListItem Value="1">General (G)</asp:ListItem>
                    <asp:ListItem Value="2">Parental Guidance (PG)</asp:ListItem>
                    <asp:ListItem Value="3">14A</asp:ListItem>
                    <asp:ListItem Value="4">18A</asp:ListItem>
                    <asp:ListItem Value="5">Restricted (R)</asp:ListItem>
                </asp:RadioButtonList>

                <asp:Label ID="Label5" runat="server" Text="Review(1-5 Stars)" AssociatedControlID="MovieReview"></asp:Label>
                <asp:DropDownList ID="MovieReview" runat="server">
                    <asp:ListItem Value="1">1 Star</asp:ListItem>
                    <asp:ListItem Value="2">2 Stars</asp:ListItem>
                    <asp:ListItem Value="3">3 Stars</asp:ListItem>
                    <asp:ListItem Value="4">4 Stars</asp:ListItem>
                    <asp:ListItem Value="5">5 Stars </asp:ListItem>
                </asp:DropDownList>

                <asp:Label ID="Label6" runat="server" Text="ISBN" AssociatedControlID="ISBN"></asp:Label>
                <asp:TextBox ID="ISBN" runat="server"></asp:TextBox>
                <asp:Button ID="SearchOnline" runat="server" Text="Search Online" />
            </fieldset>
        </div>
        <div class="col-md-6">
            <asp:Button ID="Submit" runat="server" Text="Add to Library"
                CssClass="btn btn-success" OnClick="Submit_Click"/>
        </div>
    </div>

    <asp:Label ID="MessageLabel" runat="server"></asp:Label>
    
    <script src="../Scripts/bootwrap-freecode.js"></script>
</asp:Content>
