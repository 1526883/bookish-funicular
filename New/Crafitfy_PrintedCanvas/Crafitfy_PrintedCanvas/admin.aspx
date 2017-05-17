<%@ Page Title="" Language="C#" MasterPageFile="~/PrintedCanvas.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Crafitfy_PrintedCanvas.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentbody" runat="server">

      <div class="Admin_form">
            
            <asp:TextBox ID="Uname_tb" runat="server" Placeholder="Username" CssClass="Uname_Css"></asp:TextBox> 
         
           <asp:TextBox ID="Pword_tb" runat="server" Placeholder="Password" CssClass="P_Css" TextMode="Password"></asp:TextBox>
          
            <asp:Button ID="log_inbtn" runat="server" Text="Log In" CssClass="Log_in_Css" OnClick="loginbtn_Click1" />
            

    
         
<div class="lbl_adminlogin">
    <asp:Label ID="lbl_adminlogin" runat="server" ForeColor="Red"></asp:Label>

    </div>
         
</div>
    </asp:Content>
