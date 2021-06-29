<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
</head>
<body>
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li><a href="#">Page 2</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#" id="login1"  Onclick="click"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>

    <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
  
<div class="container">
 
</div>

    <form id="form1" runat="server">
      

             <div class="panel-body" >
                 <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="firstname" runat="server" />
                                        <asp:TextBox ID="firstname"  runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="firstname"/>
                                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator1" style="color:red" runat="server" ControlToValidate="firstname" ErrorMessage="กรุณาใส่ข้อมูลให้ครบ" />
                                    </div>
                                </div>

                                    <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="lastname" runat="server" />
                                        <asp:TextBox ID="lastname" runat ="server" Enabled="true"  CssClass="form-control input-sm" placeholder="lastname" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" style="color:red" runat="server" ControlToValidate="lastname" ErrorMessage="กรุณาใส่ข้อมูลให้ครบ" />
                                    </div>
                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="birthday" runat="server" />
                                        <asp:Label ID="birthday" runat="server" Text="อายุของคุณ"></asp:Label>
                                        <asp:TextBox id="totalage" runat="server" Enabled="true" TextMode="Date" CssClass="form-control input-sm" placeholder="birthday" OnTextChanged="totalage_TextChanged" />
                                        

                                    </div>
                                </div>
                     
                                    <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Adress" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true"  CssClass="form-control input-sm" placeholder="Adress" />

                                    </div>
                                </div>

                             

                                        <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="password" runat="server" />
                                        <asp:TextBox ID="password" runat="server" Enabled="true" TextMode="Password" CssClass="form-control input-sm" placeholder="password" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" style="color:red" runat="server" ControlToValidate="password" ErrorMessage="กรุณาใส่ข้อมูลให้ครบ" />
                                    </div>
                                </div>

                                
                                    <div class="row">
                                    <div class="col-md-8 col-md-offet-2">
                                        
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        
                                        <asp:Button Text="Save" Onclick="click" ID="btnsave" CssClass="btn btn-primary" Width="170px" runat="server" />
                                        
                                    </div>
                                </div>
                               
          
        </div>
    </div>
           </div>

            </div>
        </section>
    </section>
    </form>
    <script>
    $(document).ready(function () {
        $("#totalage").on('change', () => {
            var bdate = $("#totalage").val();
            var bdateformat = new Date(bdate);
            var yearbd = bdateformat.getFullYear();
            var today = new Date()
            var yeartd = today.getFullYear();
            var getage = yeartd - yearbd;
            console.log(getage);
            $("#birthday").html(function (i, origText) {
                return "อายุของคุณคือ "+getage+" ปี";
            });
            
        })
        
    });
    </script>
</body>
</html>
