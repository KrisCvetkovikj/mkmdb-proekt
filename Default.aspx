<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to the Macedonian Movie Database!
    </h2>
    <p>
        Click on a movie for more info:</p>
    <div>
        <asp:GridView ID="gView1" runat="server" AllowPaging="True" AllowSorting="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" 
            BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id" 
            DataSourceID="SqlDataSource1" GridLines="Horizontal" PageSize="5" 
            onselectedindexchanged="Unnamed1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                    SortExpression="Id" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="ReleaseYear" HeaderText="ReleaseYear" 
                    SortExpression="ReleaseYear" />
                <asp:BoundField DataField="Director" HeaderText="Director" 
                    SortExpression="Director" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
            DeleteCommand="DELETE FROM [Movie] WHERE [Id] = @Id" 
            InsertCommand="INSERT INTO [Movie] ([Id], [Title], [ReleaseYear], [Director], [Poster]) VALUES (@Id, @Title, @ReleaseYear, @Director, @Poster)" 
            SelectCommand="SELECT * FROM [Movie] ORDER BY [Id], [Title], [ReleaseYear]" 
            UpdateCommand="UPDATE [Movie] SET [Title] = @Title, [ReleaseYear] = @ReleaseYear, [Director] = @Director, [Poster] = @Poster WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="ReleaseYear" Type="Int32" />
                <asp:Parameter Name="Director" Type="String" />
                <asp:Parameter Name="Poster" Type="Object" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="ReleaseYear" Type="Int32" />
                <asp:Parameter Name="Director" Type="String" />
                <asp:Parameter Name="Poster" Type="Object" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </asp:Content>
