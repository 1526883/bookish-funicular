<%@ Page Title="" Language="C#" MasterPageFile="~/PrintedCanvas.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Crafitfy_PrintedCanvas.Contact_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentbody" runat="server">
    <div class="contentText2">

      <p>If you have a question, drop a comment below and we will answer your contact request as soon as possible! 
          You can also leave a message on our Twitter, Facebook and Gmail at nurcraftifycanvas@gmail.com!
          
       </p>


    </div>
           <!--Reference : https://www.youtube.com/watch?v=_NCmxWCvV0o&t=547s -->
        <div class="Contact_form">
            <div class="name_text">
        <label>Name:</label>
            
  <asp:TextBox ID="name_textb" runat="server" Placeholder="Enter your name" ></asp:TextBox>
   <asp:RequiredFieldValidator ID="validatortxtName" runat="server" ErrorMessage="Name is required!" ControlToValidate="name_textb" ForeColor="Red"></asp:RequiredFieldValidator>
            
</div>

            
            

            <div class="subject_text">
        <label>Subject:</label>
            <asp:TextBox ID="subject_textb" runat="server" Placeholder="Enter subject"></asp:TextBox>
            </div>



            <div class="email_txt">
            <p>Email:</p> 
            <asp:TextBox ID="email_textb" runat="server" Placeholder="yourname@gmail.com" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="validatortxtEmail" runat="server" ErrorMessage="Email is required!"  ControlToValidate="email_textb" ForeColor="Red"></asp:RequiredFieldValidator>
           
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email_textb" ErrorMessage="Please enter a valid email!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>

            <div class="message_text">
        <p>Message:</p>
        <asp:TextBox ID="message_textb" runat="server" Columns="5" height="90px" TextMode="MultiLine" Width="92%" CssClass="message_text" ForeColor="Black" Placeholder="Enter message..."></asp:TextBox>
         <asp:RequiredFieldValidator ID="validationtxtMessage" runat="server" ErrorMessage="Message is required!" ControlToValidate="message_textb" ForeColor="Red"></asp:RequiredFieldValidator>
           
            
</div>

            <asp:Button ID="cmdSubmit" runat="server" Text="Submit" Height="28px" Width="73px" OnClick="cmdSubmit_Click" />
           
         
              
       
         
            
            
        <asp:Label ID="lbl_message" runat="server" CssClass="lblmessage" ></asp:Label>
           
          
</div>
       
 
          <h4> View location here</h4>  
    <div class="map">

         
         <div id="my_map" style="width:100%;height:500px;"></div>
        <p>Roof Top, Plaza Abdul Razak, Jalan Laksamana Abdul Razak, Bandar Seri Begawan, Brunei</p>
           
        <script src="map.js"></script>

            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA80DurSCHPilhiNZaYEnL97ZvgSVJCnPs&callback=initMap"></script>
    
      </div> 
</asp:Content>
