<%@ Page Title="" Language="C#" MasterPageFile="~/PrintedCanvas.Master" AutoEventWireup="true" CodeBehind="Adminview.aspx.cs" Inherits="Crafitfy_PrintedCanvas.Gridview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contentbody" runat="server">




    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataproducts" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CellSpacing="4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1045px" ShowFooter="True" Height="277px">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:TemplateField HeaderText="id" SortExpression="id">
            <EditItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("id") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                <asp:LinkButton ID="insert_lbel" runat="server">Insert</asp:LinkButton>
            </FooterTemplate>
        </asp:TemplateField>
        
        
        
        <asp:TemplateField HeaderText="productname" SortExpression="productname">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("productname") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("productname") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="name_txtb" runat="server"></asp:TextBox>
            </FooterTemplate>
        </asp:TemplateField>



        <asp:TemplateField HeaderText="productdetail" SortExpression="productdetail">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("productdetail") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("productdetail") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="details_txtb" runat="server"></asp:TextBox>
            </FooterTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="productquantity" SortExpression="productquantity">
            <EditItemTemplate>
                 <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("productquantity") %>'>

                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                 </asp:DropDownList>
              
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("productquantity") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("productquantity") %>'>

                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                 </asp:DropDownList>
            </FooterTemplate>
        </asp:TemplateField>



      
        <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="viewproduct.aspx?Id={0}" Text=" Image" AccessibleHeaderText="productimage" HeaderText="productimage" DataTextField="productimage" />
            
            

       
            
            

        <asp:TemplateField HeaderText="productprice" SortExpression="productprice">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("productprice") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("productprice") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="price_txtb" runat="server"></asp:TextBox>
            </FooterTemplate>
        </asp:TemplateField>



      
            
            

    </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataproducts" runat="server" ConnectionString="<%$ ConnectionStrings:productsConnectionString %>" DeleteCommand="DELETE FROM [products] WHERE [id] = @id" InsertCommand="INSERT INTO [products] ([id], [productname], [productdetail], [productquantity], [productimage], [productprice]) VALUES (@id, @productname, @productdetail, @productquantity, @productimage, @productprice)" SelectCommand="SELECT * FROM [products]" UpdateCommand="UPDATE [products] SET [productname] = @productname, [productdetail] = @productdetail, [productquantity] = @productquantity, [productimage] = @productimage, [productprice] = @productprice WHERE [id] = @id">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="id" Type="Int32" />
        <asp:Parameter Name="productname" Type="String" />
        <asp:Parameter Name="productdetail" Type="String" />
        <asp:Parameter Name="productquantity" Type="String" />
        <asp:Parameter Name="productimage" Type="Object" />


        <asp:Parameter Name="productprice" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="productname" Type="String" />
        <asp:Parameter Name="productdetail" Type="String" />
        <asp:Parameter Name="productquantity" Type="String" />
        <asp:Parameter Name="productimage" Type="Object" />
        <asp:Parameter Name="productprice" Type="String" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>




    </asp:Content>
