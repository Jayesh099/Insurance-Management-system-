<%@ Page Language="C#" AutoEventWireup="true" Codefile="View_Claim.aspx.cs" Inherits="Insurance_management_System.Agent.View_Claim" %>

<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Agent/View Claim</title>
		<meta name="keywords" content="HTML5 Admin Template" />
		<meta name="description" content="Porto Admin - Responsive HTML5 Template">
		<meta name="author" content="okler.net">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<!-- Web Fonts  -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="assets/vendor/magnific-popup/magnific-popup.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-datepicker/css/datepicker3.css" />

		<!-- Specific Page Vendor CSS -->
		<link rel="stylesheet" href="assets/vendor/select2/select2.css" />
		<link rel="stylesheet" href="assets/vendor/jquery-datatables-bs3/assets/css/datatables.css" />

		<!-- Theme CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme.css" />

		<!-- Skin CSS -->
		<link rel="stylesheet" href="assets/stylesheets/skins/default.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme-custom.css">

		<!-- Head Libs -->
		<script src="assets/vendor/modernizr/modernizr.js"></script>

	</head>
	<body>
		
		<section class="body">

														<!-- start: header -->
														<!--#include  file='Agent_Header.aspx'-->
														<!-- end: header -->

			<div class="inner-wrapper">
														<!-- start: sidebar -->
														<!--#include  file='Agent_Navbar.aspx'-->
														<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Total  Claim</h2>
					
						
					</header>

					<!-- start: page -->
<form  runat="server">
						<section class="panel">
							<header class="panel-heading">
								<div class="panel-actions">
									<a href="#" class="fa fa-caret-down"></a>
									<a href="#" class="fa fa-times"></a>
								</div>
						
								<h2 class="panel-title">Claim</h2>
							</header>
							<div class="panel-body">
								<div class="row">
									<%--<div class="col-sm-6">
										<div class="mb-md">
											<button id="addToTable" class="btn btn-primary">Add <i class="fa fa-plus"></i></button>
										</div>
									</div>--%>
								</div>
								<table class="table table-bordered table-striped mb-none" id="datatable-editable">
									<thead>
										<tr>
											<th>Claim  Id</th>
											<th>Order  ID</th>
											<th>Intimation  Date</th>
											<th>Description</th>
											<th>Document</th>
											<th>Total  Amount</th>
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
                                                                                    <%#Eval("claim_id") %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center">
                                                                                <p style="margin-left: 55px;">
                                                                                    <%#Eval("order_id") %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center">
                                                                                <p style="margin-left: 35px;">
                                                                                    <%#Eval("Intimation_Date") %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center">
                                                                                <p style="margin-left: 35px;">
                                                                                    <%#Eval("description") %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                      <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center">
                                                                                <p style="margin-left: 35px;">
                                                                                    <%#Eval("Document") %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                      <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center">
                                                                                <p style="margin-left: 35px;">
                                                                                    <%#Eval("Total_amount") %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center">
                                                                                <p style="margin-left: 35px;">
                                                                                    <%#Eval("Status") %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                   
                                                                    <td>
                                                                        <div class="d-flex px-2 py-1">
                                                                            <div class="d-flex flex-column justify-content-center">
                                                                                <a onclick="return confirm('Are you sure to Update the Status ?')" href="Update_View_Claim.aspx?fid=<%#Eval("claim_id") %>" style="margin-left: 20px;">Approved</a>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    
                                                                </tr>

                                                            </tbody>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                       								</table>
							</div>
						</section>
					<!-- end: page -->
				</section>
			</div>

			<aside id="sidebar-right" class="sidebar-right">
				<div class="nano">
					<div class="nano-content">
						<a href="#" class="mobile-close visible-xs">
							Collapse <i class="fa fa-chevron-right"></i>
						</a>
			
						<div class="sidebar-right-wrapper">
			
							<div class="sidebar-widget widget-calendar">
								<h6>Upcoming Tasks</h6>
								<div data-plugin-datepicker data-plugin-skin="dark" ></div>
			
								<ul>
									<li>
										<time datetime="2014-04-19T00:00+00:00">04/19/2014</time>
										<span>Company Meeting</span>
									</li>
								</ul>
							</div>
			
							<div class="sidebar-widget widget-friends">
								<h6>Friends</h6>
								<ul>
									<li class="status-online">
										<figure class="profile-picture">
											<img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
									<li class="status-online">
										<figure class="profile-picture">
											<img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
									<li class="status-offline">
										<figure class="profile-picture">
											<img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
									<li class="status-offline">
										<figure class="profile-picture">
											<img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
								</ul>
							</div>
			
						</div>
					</div>
				</div>
			</aside>
		</section>

		<div id="dialog" class="modal-block mfp-hide">
			<section class="panel">
				<header class="panel-heading">
					<h2 class="panel-title">Are you sure?</h2>
				</header>
				<div class="panel-body">
					<div class="modal-wrapper">
						<div class="modal-text">
							<p>Are you sure that you want to delete this row?</p>
						</div>
					</div>
				</div>
				<footer class="panel-footer">
					<div class="row">
						<div class="col-md-12 text-right">
							<button id="dialogConfirm" class="btn btn-primary">Confirm</button>
							<button id="dialogCancel" class="btn btn-default">Cancel</button>
						</div>
					</div>
				</footer>
			</section>
		</div>

		<!-- Vendor -->
		<script src="assets/vendor/jquery/jquery.js"></script>
		<script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="assets/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="assets/vendor/magnific-popup/magnific-popup.js"></script>
		<script src="assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		
		<!-- Specific Page Vendor -->
		<script src="assets/vendor/select2/select2.js"></script>
		<script src="assets/vendor/jquery-datatables/media/js/jquery.dataTables.js"></script>
		<script src="assets/vendor/jquery-datatables-bs3/assets/js/datatables.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>


		<!-- Examples -->
		<script src="assets/javascripts/tables/examples.datatables.editable.js"></script>
	   </form>
	</body>
</html>