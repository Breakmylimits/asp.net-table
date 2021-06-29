<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication1.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {background:#ccc}

.box h3{
  text-align:center;
    position:relative;
    top:80px;
}
.box {
    width:70%;
    height:800px;
    background:#FFF;
    margin:40px auto;
}

.effect6
{
    position:relative;
    -webkit-box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
       -moz-box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
            box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
}
.effect6:before, .effect6:after
{
    content:"";
    position:absolute;
    z-index:-1;
    -webkit-box-shadow:0 0 20px rgba(0,0,0,0.8);
    -moz-box-shadow:0 0 20px rgba(0,0,0,0.8);
    box-shadow:0 0 20px rgba(0,0,0,0.8);
    top:50%;
    bottom:0;
    left:10px;
    right:10px;
    -moz-border-radius:100px / 10px;
    border-radius:100px / 10px;
}
.effect6:after
{
    right:10px;
    left:auto;
    -webkit-transform:skew(8deg) rotate(3deg);
       -moz-transform:skew(8deg) rotate(3deg);
        -ms-transform:skew(8deg) rotate(3deg);
         -o-transform:skew(8deg) rotate(3deg);
            transform:skew(8deg) rotate(3deg);
}
.div
{
    background-color:lavender;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="box effect6"> 
           
            
            <asp:Label ID="Label1" runat="server" Text="เลือกไฟล์เพื่อเปลี่ยนชื่อ">
            <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="#0000CC" Width="309px" />
                <asp:Label ID="Label2" runat="server" Text="ชื่อใหม่"></asp:Label>
                </asp:Label><asp:TextBox ID="namefile" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="เปลี่ยนชื่อ" Width="105px" /> 

            <asp:GridView ID="GridView1" class="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False" BorderStyle="Dotted" GridLines="Horizontal" Height="459px" HorizontalAlign="Center" OnRowCommand="GridView1_RowCommand"  style="margin-bottom: 0px" Width="646px" AllowSorting="True" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing">
                <Columns>
                    <asp:TemplateField HeaderText="File">
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" OnClick="LinkButton1_Click" Text='<%# Eval("File") %>'></asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" Text='<%# Eval("File") %>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="size" HeaderText="Size" />
                    <asp:BoundField DataField="type" HeaderText="File Type" />
                    <asp:TemplateField HeaderText="Remove">
                        
                           
                       
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="delate">Delate</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit">Rename</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton4" runat="server" CommandName="cancel">Cancel</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle HorizontalAlign="Center" CssClass="table table-primary" />
            </asp:GridView>

        </>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
