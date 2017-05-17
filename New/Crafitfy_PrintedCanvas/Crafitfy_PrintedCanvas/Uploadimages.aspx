<%@ Page Title="" Language="C#" MasterPageFile="~/PrintedCanvas.Master" AutoEventWireup="true" CodeBehind="Uploadimages.aspx.cs" Inherits="Crafitfy_PrintedCanvas.Uploadimages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentbody" runat="server">


   

    <asp:FileUpload ID="file_upl" runat="server" />
    <asp:Button ID="b1" runat="server" Text="Upload" OnClick="Button1_Click"  />



    <asp:Image ID="CurrentImage" runat="server" Height="200px" Width="259px" />
	
    
 
	
</asp:Content>
