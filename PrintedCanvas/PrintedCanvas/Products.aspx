<%@ Page Title="" Language="C#" MasterPageFile="~/Printed_Canvas.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="PrintedCanvas.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="contentbody" runat="server">
 
    <div id="Img_gallery_title">
        <p>Create a look at home that’s all your own with customizable wall décor and more. 
            Complement your favorite photo with a piece from our growing collection of fine artwork.</p>


    </div>
    
    <div class="Img_gallery">

     <ul>
         <li><img src="Products/birds.jpg" /></li>
         <li><img src="Products/gold_canvas.jpg" /></li>
         <li><img src="Products/let_it_be.jpg" /></li>
         <li><img src="Products/rainbow_rain.jpg" /></li>
         <li><img src="Products/venture_out.jpg" /></li>
         <li><img src="Products/world_map.jpg" /></li>

     </ul>


 </div>





</asp:Content>
