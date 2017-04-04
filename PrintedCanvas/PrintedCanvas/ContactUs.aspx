<%@ Page Title="" Language="C#" MasterPageFile="~/Printed_Canvas.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="PrintedCanvas.ContactUs" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
   
 
    
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="contentbody" Runat="Server">
 
    <div class="contentText2">

      <p>If you have a question, drop a comment below and we will answer your contact request as soon as possible! 
          You can also leave a message on our Twitter, Facebook and Gmail at craftifycanvas@gmail.com!
          
       </p>


    </div>
           <!--Reference : https://www.youtube.com/watch?v=_NCmxWCvV0o&t=547s -->
        <div class="Contact_form">

        <label>Name:</label>
        <input type="text" name="name" placeholder="Your name">

        <label>Phone:</label> 
        <input type="text" name="Phone" placeholder="ex: (111) 111-1111"/>
        
         <label>Email:</label> 
         <input type="text" name="Email" placeholder="yourname@gmail.com"/>
        
        <div class="Message_form">
        
        <label>Message:</label> 
    <textarea name="message" cols="80" rows="10">

    </textarea>
</div>
         
       <button type="submit" class="submit" >Submit</button>
         
</div>
       

          <h4> View location here</h4>  

        <div class="map">
       <a href="#"><img src="Images/map.jpg" alt="Img-map" /></a>

              
 </div> 
            
</asp:Content>
