<%@ Page Title="" Language="C#" MasterPageFile="~/Printed_Canvas.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="PrintedCanvas.ContactUs" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
   
 
    
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="contentbody" Runat="Server">
 
    <div class="contentText2">

      <p><em>If you have a question, drop a comment below and we will answer your contact request as soon as possible! 
          You can also leave a message on our Twitter, Facebook and Gmail at craftifycanvas@gmail.com!
          
       </em></p>


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
    <textarea name="message" cols="80" rows="10" placeholder="Your message..">

    </textarea>
</div>
         
       <button type="submit" class="submit" >Submit</button>
         
</div>
       

          <h4> View location here</h4>  

        <div class="map">
       <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3975.3214661549628!2d114.92948051430633!3d4.885730896452555!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x32228ac8ee3f7d03%3A0xcacd96016959ec39!2sLaksamana+College+of+Business!5e0!3m2!1sen!2sbn!4v1491020862109" class="map_iframe"></iframe>
              
 </div> 
            
</asp:Content>
