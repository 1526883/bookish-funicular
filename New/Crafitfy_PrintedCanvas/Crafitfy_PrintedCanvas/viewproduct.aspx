<%@ Page Title="" Language="C#" MasterPageFile="~/PrintedCanvas.Master" AutoEventWireup="true" CodeBehind="viewproduct.aspx.cs" Inherits="Crafitfy_PrintedCanvas.viewproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentbody" runat="server">



    



    <asp:Image ID="CurrentImage" runat="server" CssClass="proimage_css" />
<asp:FormView ID="FormView1" runat="server" CssClass="auto-style1" DataKeyNames="id" DataSourceID="view_pro" Width="616px">
    <EditItemTemplate>
        id:
        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
        <br />
        productname:
        <asp:TextBox ID="productnameTextBox" runat="server" Text='<%# Bind("productname") %>' />
        <br />
        productdetail:
        <asp:TextBox ID="productdetailTextBox" runat="server" Text='<%# Bind("productdetail") %>' />
        <br />
        productquantity:
        <asp:TextBox ID="productquantityTextBox" runat="server" Text='<%# Bind("productquantity") %>' />
        <br />
        productimage:
        <asp:TextBox ID="productimageTextBox" runat="server" Text='<%# Bind("productimage") %>' />
        <br />
        productprice:
        <asp:TextBox ID="productpriceTextBox" runat="server" Text='<%# Bind("productprice") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        id:
        <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
        <br />
        productname:
        <asp:TextBox ID="productnameTextBox" runat="server" Text='<%# Bind("productname") %>' />
        <br />
        productdetail:
        <asp:TextBox ID="productdetailTextBox" runat="server" Text='<%# Bind("productdetail") %>' />
        <br />
        productquantity:
        <asp:TextBox ID="productquantityTextBox" runat="server" Text='<%# Bind("productquantity") %>' />
        <br />
        productimage:
        <asp:TextBox ID="productimageTextBox" runat="server" Text='<%# Bind("productimage") %>' />
        <br />
        productprice:
        <asp:TextBox ID="productpriceTextBox" runat="server" Text='<%# Bind("productprice") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        id:
        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
        <br />
        productname:
        <asp:Label ID="productnameLabel" runat="server" Text='<%# Bind("productname") %>' />
        <br />
        productdetail:
        <asp:Label ID="productdetailLabel" runat="server" Text='<%# Bind("productdetail") %>' />
        <br />
        productquantity:
        <asp:Label ID="productquantityLabel" runat="server" Text='<%# Bind("productquantity") %>' />
        <br />
        productimage:
        <asp:Label ID="productimageLabel" runat="server" Text='<%# Bind("productimage") %>' />
        <br />
        productprice:
        <asp:Label ID="productpriceLabel" runat="server" Text='<%# Bind("productprice") %>' />
        <br />

    </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="view_pro" runat="server" ConnectionString="<%$ ConnectionStrings:productsConnectionString %>" SelectCommand="SELECT * FROM [products] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
