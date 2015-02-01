<%@ Page Title="Movie Details" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="MovieDetails.aspx.cs" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    .style2
    {
        width: 46px;
    }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        <asp:Label ID="Label1" runat="server" Text="" Font-Bold="true" Font-Size="Larger"></asp:Label>
    </h2>
    <p>
        
        <table class="style1">
            <tr>
                <td><asp:Image ID="Image1" runat="server" />
                    &nbsp;</td>
                <td class="style2">&nbsp;</td>
                <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbActors" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style2">&nbsp;</td>
                <td>
                    <asp:Label ID="lbDirector" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lbGenres" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        
        
        
    
        
    </p>
<p>
        
    &nbsp;</p>
</asp:Content>
