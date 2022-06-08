﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fgotpverfiy.aspx.cs" Inherits="Insurance_management_System.forgotpassword.fgotpverfiy" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Insurance Management System</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="card card-outline card-primary">
    <div class="card-header text-center">
      <a href="../../index2.html" class="h1"><b>OTP Verification</b></a>
         <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </div>
    <div class="card-body">
      <p class="login-box-msg">Enter Your OTP</p>
      <form  method="post"  runat="server">
        <div class="input-group mb-3">
          <asp:TextBox id="txtotp" type="number" runat="server" class="form-control" placeholder="OTP"></asp:TextBox>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-check-circle"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-12">
            <asp:Button id="btnotpverify" type="submit" runat="server" class="btn btn-primary btn-block" Text="Verify" OnClick="btnotpverify_Click"></asp:Button>
          </div>
          <!-- /.col -->
        </div>
      </form>
      <%--<p class="mt-3 mb-1">
        <a href="Loginpage.aspx"><center><span style=" color:blue">Login</span></center></a>
      </p>--%>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
</body>
</html>


