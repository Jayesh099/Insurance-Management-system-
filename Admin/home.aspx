1<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Insurance_management_System.Admin.home" %>

<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="assets/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
    <title>Admin Dashboard</title>
</head>

<body>
    <form  action="#" method="" runat="server">
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
   
        
        
        <!--- Header  started ---->
         <!--#include file='headeradmin.aspx' -->
           
        <!--- Header   ended---- >
       
            
            
            
            
            
            <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
       
        
       <!--- navbar  started  ---> 
        <!--#include file='adminnavbar.aspx' -->
        <!--  navbar  ended --->



        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="dashboard-ecommerce">

                <div class="container-fluid dashboard-content ">
                     <div class="row">
                        <div class="col-3">
                            
                                 <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">Total No. of customer</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1">
                                                <asp:Label ID="lbl_cust" runat="server" Text="Label"></asp:Label>
                                          </h1>
                                        </div>
                                        <!--<div class="metric-label d-inline-block float-right text-success font-weight-bold">
                                            <span><i class="fa fa-fw fa-arrow-up"></i></span><span>5.86%</span>
                                        </div>-->
                                    </div>
                                    
                                </div>
                            </div>
                          <div class="col-3 ">

                               <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">Total  No. of  Agent</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1">
                                                 <asp:Label ID="lbl_agent" runat="server" Text="Label"></asp:Label>
                                                </h1>
                                        </div>
                                       <!-- <div class="metric-label d-inline-block float-right text-success font-weight-bold">
                                            <span><i class="fa fa-fw fa-arrow-up"></i></span><span>5.86%</span>
                                        </div>-->                                   

                                    </div>
                                </div>
                          </div>
                          <div class="col-3 ">

                               <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">Total  No. of  Category</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1">
                                                 <asp:Label ID="lbl_Category" runat="server" Text="Label"></asp:Label>
                                                
                                                </h1>
                                        </div>
                                      <!--  <div class="metric-label d-inline-block float-right text-success font-weight-bold">
                                            <span><i class="fa fa-fw fa-arrow-up"></i></span><span>5.86%</span>
                                        </div>-->
                                    </div>
                                    
                                </div>
                          </div>
<%--                        <div class="col-3 ">

                             <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">Total No. of sub-Category Revenue</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1">
                                                 <asp:Label ID="lbl_subcategory" runat="server" Text="Label"></asp:Label>
                                                $12099</h1>
                                        </div>
                                       <!-- <div class="metric-label d-inline-block float-right text-success font-weight-bold">
                                            <span><i class="fa fa-fw fa-arrow-up"></i></span><span>5.86%</span>
                                        </div>-->
                                    </div>
                                    
                                </div>
                        </div>--%>
                      </div>
                   <div class="row">
                        <div class="col-3">
                            
                                 <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">Total  No. of claim </h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1">
                                                 <asp:Label ID="lbl_claim" runat="server" Text="Label"></asp:Label>
                                                </h1>
                                        </div>
                                        <!--<div class="metric-label d-inline-block float-right text-success font-weight-bold">
                                            <span><i class="fa fa-fw fa-arrow-up"></i></span><span>5.86%</span>
                                        </div>-->
                                    </div>
                                    
                                </div>
                            </div>
           <%--               <div class="col-3 ">

                               <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">Total  No. of Inquiry</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1">
                                               <asp:Label ID="txtfaq"  runat="server" Text="label"></asp:Label>
                                                </h1>
                                        </div>
                                       <div class="metric-label d-inline-block float-right text-success font-weight-bold">
                                            <span><i class="fa fa-fw fa-arrow-up"></i></span><span>5.86%</span>
                                        </div>
                                    </div>
                                   
                                </div>
                          </div>--%>
                     <!--     <div class="col-3 ">

                               <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">Total  No. of  Inquiry</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1">
                                                 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                                </h1>
                                        </div>
                                      </div>
                                </div>
                          </div>-->
                        <div class="col-3 ">

                           <!--  <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">Affiliate Revenue</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1">$12099</h1>
                                        </div>
                                       <div class="metric-label d-inline-block float-right text-success font-weight-bold">
                                            <span><i class="fa fa-fw fa-arrow-up"></i></span><span>5.86%</span>
                                        </div>
                                    </div>
                                    
                                </div>-->
                        </div>
                      </div>
                    </div>
                    </div>
                    
                                
                                
             <!-- ============================================================== -->
            <!-- footer -->
         
                   
            
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
       











        <!-- ============================================================== -->
        <!-- end wrapper  -->
        <!-- ============================================================== -->
   
    <!-- ============================================================== -->
    <!-- end main wrapper  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <!-- jquery 3.3.1 -->
    <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <!-- bootstap bundle js -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <!-- slimscroll js -->
    <script src="assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <!-- main js -->
    <script src="assets/libs/js/main-js.js"></script>
    <!-- chart chartist js -->
    <script src="assets/vendor/charts/chartist-bundle/chartist.min.js"></script>
    <!-- sparkline js -->
    <script src="assets/vendor/charts/sparkline/jquery.sparkline.js"></script>
    <!-- morris js -->
    <script src="assets/vendor/charts/morris-bundle/raphael.min.js"></script>
    <script src="assets/vendor/charts/morris-bundle/morris.js"></script>
    <!-- chart c3 js -->
    <script src="assets/vendor/charts/c3charts/c3.min.js"></script>
    <script src="assets/vendor/charts/c3charts/d3-5.4.0.min.js"></script>
    <script src="assets/vendor/charts/c3charts/C3chartjs.js"></script>
    <script src="assets/libs/js/dashboard-ecommerce.js"></script>
        </form>
</body>
 
</html>