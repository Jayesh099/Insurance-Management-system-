<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewcustomer.aspx.cs" Inherits="Insurance_management_System.Admin.admindisplay.viewcustomer" %>

<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Data Tables</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="../assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="../assets/libs/css/style.css">
    <link rel="stylesheet" href="../assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" type="text/css" href="../assets/vendor/datatables/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="../assets/vendor/datatables/css/buttons.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="../assets/vendor/datatables/css/select.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="../assets/vendor/datatables/css/fixedHeader.bootstrap4.css">
</head>

<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
         <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        
        
        <!---Header started  -->
           <!--#include file='../headeradmin.aspx' -->
      
        <!--Header Ended  -->
        
        
        
        
        
        <!--Navabr  started--->
          <!--#include file='../adminnavbar.aspx' -->
        <!--Navabr  ended --->
        
        
        
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="container-fluid  dashboard-content">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row" >
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12" >
                        <div class="page-header">
                            <h2 class="pageheader-title "  style="margin-top: -60px;" >Data Tables</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Tables</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Data Tables</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
               


               
              <!---data field template  Started-->
                <div class="row">
                    <!-- ============================================================== -->
                    <!-- data table multiselects  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0">Customer  Data  </h5>
                                 </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example3" class="table table-striped table-bordered" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th> Id </th>
                                                <th>Name </th>
                                                <th>Email</th>
                                                <th>PAssword </th>
                                                <th>Contact </th>
                                                <th>FatherName </th>
                                                <th>MotherName  </th>
                                                <th>Adhar  Number  </th>
                                                <th>Existing  Illness</th>
                                                <th>Age </th>
                                                <th>Gender </th>
                                                <th>Dob </th>
                                                <th>Address</th>
                                                <th>Occuption</th>
                                                <th>Qualification</th>
                                                <th>Annual Income</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                        <asp:Repeater ID="repeater1" runat="server">
                                                        <ItemTemplate>

                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center">
                                                                                <p style="margin-left: 5px;">
                                                                                    <%#Eval("Id") %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center">
                                                                                <p style="margin-left: 55px;">
                                                                                    <%#Eval("Name") %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center">
                                                                                <p style="margin-left: 35px;">
                                                                                    <%#Eval("email") %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center">
                                                                                <p style="margin-left: 65px;">
                                                                                    <%#Eval("Password") %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center">
                                                                                <p style="margin-left: 65px;">
                                                                                    <%#Eval("Contact") %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center">
                                                                                <p style="margin-left: 45px;">
                                                                                    <%#Eval("Fathername") %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center">
                                                                                <p style="margin-left: 65px;">
                                                                                    <%#Eval("Mothername") %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center">
                                                                                <p style="margin-left: 40px;">
                                                                                  <span class="blink">  <%#Eval("AdharNumber") %></span>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center" style="margin-left: 30px;margin-bottom:10px;">
                                                                                <div class="online-indicator">
                                                                                    <span class="blink"> <%#Eval("ExistingIllness") %></span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center" style="margin-left: 30px;margin-bottom:10px;">
                                                                                <div class="online-indicator">
                                                                                    <span class="blink"> <%#Eval("Age") %></span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center" style="margin-left: 30px;margin-bottom:10px;">
                                                                                <div class="online-indicator">
                                                                                    <span class="blink"> <%#Eval("Gender") %></span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center" style="margin-left: 30px;margin-bottom:10px;">
                                                                                <div class="online-indicator">
                                                                                  <%--<img src="<%#Eval("Image") %>" class="rounded-circle" height="100" width="100">
                                                                                  --%>  
                                                                                    <span class="blink"> <%#Eval("Dob") %></span>
                                                                                   </div>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center" style="margin-left: 30px;margin-bottom:10px;">
                                                                                <div class="online-indicator">
                                                                                    <span class="blink"> <%#Eval("Address") %></span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                       <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center" style="margin-left: 30px;margin-bottom:10px;">
                                                                                <div class="online-indicator">
                                                                                    <span class="blink"> <%#Eval("occuption") %></span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                       <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center" style="margin-left: 30px;margin-bottom:10px;">
                                                                                <div class="online-indicator">
                                                                                    <span class="blink"> <%#Eval("Qualification") %></span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                       <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center" style="margin-left: 30px;margin-bottom:10px;">
                                                                                <div class="online-indicator">
                                                                                    <span class="blink"> <%#Eval("Annualincome") %></span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                       <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center" style="margin-left: 30px;margin-bottom:10px;">
                                                                                <div class="online-indicator">
                                                                                    <span class="blink"> <%#Eval("Status") %></span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center">
                                                                                <a onclick="return confirm('Are you sure to delete the record ?')" href="viewcustomer.aspx?delid=<%#Eval("Id") %>" style="margin-left: 20px;">Delete</a>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                </tr>

                                                            </tbody>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                          <%--   <tfoot>
                                            <tr>
                                                <th>Name</th>
                                                <th>Position</th>
                                                <th>Office</th>
                                                <th>Age</th>
                                                <th>Start date</th>
                                                <th>Salary</th>
                                            </tr>
                                        </tfoot>
                                    --%></table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end data table multiselects  -->
                    <!-- ============================================================== -->
                </div>
                <!--Data field template ended-->
           
                
                
                
                
                
                
                
                
                
                
                
                <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            
                
                
                
                
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
       
                
            
            
            </div>
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="../assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="../assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="../assets/vendor/multi-select/js/jquery.multi-select.js"></script>
    <script src="../assets/libs/js/main-js.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="../assets/vendor/datatables/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="../assets/vendor/datatables/js/buttons.bootstrap4.min.js"></script>
    <script src="../assets/vendor/datatables/js/data-table.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>
    <script src="https://cdn.datatables.net/rowgroup/1.0.4/js/dataTables.rowGroup.min.js"></script>
    <script src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
    <script src="https://cdn.datatables.net/fixedheader/3.1.5/js/dataTables.fixedHeader.min.js"></script>
    
</body>
 
</html>