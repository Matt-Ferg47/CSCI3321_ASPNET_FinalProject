<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add New Book</h3>
    <div class="row">
        <div class="col-md-3">Book Title</div>
        <div class="col-md-9">
            <asp:TextBox ID="txtBookTitle" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">Author's Name</div>
        <div class="col-md-9">
            <asp:DropDownList ID="ddlAuthor" runat="server" DataSourceID="sdsAuthors" DataTextField="LastName" DataValueField="AuthorID"></asp:DropDownList>
            <asp:SqlDataSource ID="sdsAuthors" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT AuthorID, LastName, FirstName FROM Authors"></asp:SqlDataSource>
        </div>

        <div class="col-md-3">Price</div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">Publish Date</div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPublishDate" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">Publisher's Name</div>
        <div class="col-md-9">
            
            <asp:DropDownList ID="ddlPublisher" runat="server" DataSourceID="sdsPublishers" DataTextField="PublisherName" DataValueField="PublisherID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="sdsPublishers" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT PublisherID, PublisherName FROM Publishers"></asp:SqlDataSource>
            
        </div>

        <div class="col-md-3">Genre</div>
        <div class="col-md-9">
            
            <asp:DropDownList ID="ddlGenre" runat="server" DataSourceID="sdsGenres" DataTextField="GenreName" DataValueField="GenreID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="sdsGenres" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT GenreID, GenreName FROM Genres"></asp:SqlDataSource>
            
        </div>

        <div class="col-md-12">
            <asp:Button ID="btnSubmit" runat="server" Text="Add Book" OnClick="btnSubmit_Click" />
        </div>
    </div>
</asp:Content>
