<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Insurance_management_System.Admin.adminlogin" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login Page </title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="login/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="login/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="login/dist/css/adminlte.min.css">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <!-- /.login-logo -->
  <div class="card card-outline card-primary">
    <div class="card-header text-center">
      <a href="../../index2.html" class="h1"><b>Login</b></a>
    </div>
    <div class="card-body">

      <p class="login-box-msg">Sign in to start your session</p>
         <asp:Label ID="lblMessage" runat="server"></asp:Label>
      <form method="post" runat="server">
        <div class="input-group mb-3">
            <asp:TextBox ID="TextBox2"  class="form-control" placeholder="Email........" runat="server" required></asp:TextBox>
          <!--<input type="email" class="form-control" placeholder="Email">-->
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
            <asp:TextBox ID="TextBox1"  class="form-control" placeholder="Password........" TextMode="Password" runat="server" required></asp:TextBox>
          <!--<input type="password" class="form-control" placeholder="Password">-->
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
       <%--    <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="remember">
              <label for="remember">
                Remember Me
              </label>
            </div>
       --%>   </div>
            <br>
          <!-- /.col -->
          <div class="col-4" >
              <asp:Button ID="Button1" runat="server" Text="Login"  class="btn btn-primary btn-block" OnClick="Button1_Click"/>
           <!-- <button type="submit" class="btn btn-primary btn-block">Login</button>->
          </div>
          <!-- /.col -->
        </div>
      </form>

     
     

     <%-- <p class="mb-1">
        <a href="ForgotPassword.aspx">I forgot my password</a>
      </p>
    <p class="mb-0">
        <a href="RegistrationPage.aspx" class="text-center">Register a new membership</a>
      </p>
    --%></div>
    <!-- /.card-body -->
  </div>
  <!-- /.card -->
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="login/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="login/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="login/dist/js/adminlte.min.js"></script>
</body>
</html>
