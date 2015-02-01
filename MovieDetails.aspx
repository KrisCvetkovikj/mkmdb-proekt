<%@ Page Title="Movie Details" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="MovieDetails.aspx.cs" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        <asp:Label ID="Label1" runat="server" Text="" Font-Bold="true" Font-Size="Larger"></asp:Label>
    </h2>
    <p>
        
        <asp:Image ID="Image1" runat="server" />
        
    </p>
    <p>
        
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        
    </p>
</asp:Content>
