<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdatePolicy.aspx.cs" Inherits="Insurance_management_System.Admin.admindisplay.UpdatePolicy" %>

<!doctype html>
<html lang="en">

 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Add Sub-Category</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
</head>

<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        
        
        
        
        <!-- ============================================================== -->
                                               <!-- header started------------------------------------------------- -->
        <!-- ============================================================== -->
      


                                     <!--#include file='headeradmin.aspx' -->


        <!-- ============================================================== -->
                                                     <!-- header ended ------------------------------------------------ -->
        <!-- ============================================================== -->





       
        
        
        <!-- ============================================================== -->
        <!--  sidebar  started-->
        <!-- ============================================================== -->




      
                                              <!--#include file='adminnavbar.aspx' -->
        
                                  
        <!-- ---------------------- sidebar ended ------------------------------->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="container-fluid  dashboard-content">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Add  Category </h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                           <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="home.aspx" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Forms</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Form Validations</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
             
                 
                

             <!-- ============================================================== -->
                        <!-- add customer form -->
             <!-- ============================================================== -->
                    <div class="row">
                       
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12" style="margin-top:80px;">
                            <div class="card">
                                <h5 class="card-header"><i>Fill Details</i></h5>
                                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                                <div class="card-body">
                                    <form action="#" id="basicform" data-parsley-validate="" runat="server">
                                     

                                         <!--   <asp:DropDownList ID="DropDownList1" runat="server" >
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                            </asp:DropDownList>-->
                                           <!-- <asp:TextBox ID="TextBox1" runat="server"  data-parsley-trigger="change" required="" placeholder=" Category id.........." autocomplete="off" class="form-control" TextMode="Number" ></asp:TextBox>
                                       -->  </div>
                                        <div class="form-group">
                                                    <div class="form-group">
                                                          <asp:TextBox ID="TextBox3"   runat="server"  required="" placeholder="Policy Name ....." autocomplete="off" class="form-control"></asp:TextBox>
                                                     </div>
                                                     <div class="form-group">
                                                          <asp:TextBox ID="TextBox2"   runat="server"  required="" placeholder="Policy  Description   ....." autocomplete="off" class="form-control"></asp:TextBox>
                                                     </div>
                                            <!--Image code -->
                                            <%--<div  class="form-group">
                                                <asp:Label ID="imageupload" runat="server"></asp:Label>
                                                <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
                                               </div>
                                            --%><!--Image code --->
                                                     <div class="form-group">
                                                          <asp:TextBox ID="TextBox4"   runat="server"  required="" placeholder=" Policy Term.........." autocomplete="off" class="form-control"></asp:TextBox>
                                                     </div>
                                                     <div class="form-group">
                                                          <asp:TextBox ID="TextBox6"   runat="server"  required="" placeholder="Maturity Benifit.........." autocomplete="off" class="form-control"></asp:TextBox>
                                                     </div>
                                                        <div class="row">
                                                               <div class="col-sm-6 pb-2 pb-sm-4 pb-lg-0 pr-0">
                                                                   <div class="col-sm-6 pl-0">
                                                                      <asp:Button ID="Button1" runat="server" Text="update"  class="btn btn-space btn-primary" OnClick="Button1_Click" />
                                                                      <!--<asp:Button ID="Button2" runat="server" Text="Cancel"  class="btn btn-space btn-primary"/>-->
                                                                         <!--  <button type="submit" class="btn btn-space btn-primary">Submit</button>
                                                                         <button class="btn btn-space btn-secondary">Cancel</button>-->
                                                                    </div>
                                                              </div>
                                                        </div> 
                                        </div>
                                </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                       </div>
            <!---------------------------------------------------------------------->
            <!-------------------add aget form  ended------------------------------->
            <!---------------------------------------------------------------------->
                 
           
            </div>
            <!-- ============================================================== -->
            <!-- footer Started-->
            <!-- ============================================================== -->
         
          
           <!--#include file='adminfooter.aspx' -->
            
                                             
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->





       
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="assets/vendor/parsley/parsley.js"></script>
    <script src="assets/libs/js/main-js.js"></script>
    <script>
    $('#form').parsley();
    </script>
    <script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function() {
        'use strict';
        window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
                form.addEventListener('submit', function(event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
    </script>
</body>
 
</html>

