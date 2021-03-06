<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact_us.aspx.cs" Inherits="Insurance_management_System.Contact_us" CodeFile="~/Contact_us.aspx.cs" %>

<html lang="en">
	<head runat="server">
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>Insurance | Contact</title>

		<!-- Loading third party fonts -->
		<link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700|" rel="stylesheet" type="text/css">
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link href="fonts/lineo-icon/style.css" rel="stylesheet" type="text/css">

		<!-- Loading main css file -->
		<link rel="stylesheet" href="style.css">
		
			  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	</head>


	<body>
		
			<!----- Header  start----->

		<!--#include file='header.aspx'-->
			<!----- Header  start----->




			<main class="main-content">
				<div class="breadcrumbs">
					<div class="container">
						
					</div>
				</div>

				<div class="page">
					<div class="container">
						<div class="map">
							<h6><i><b>Our  Branch  map</b></i></h6>
							<iframe src="https://www.google.com/maps/embed?pb=!1m26!1m12!1m3!1d238272.5269829579!2d72.82397759788866!3d21.072333344218162!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m11!3e6!4m3!3m2!1d21.1406229!2d72.7939379!4m5!1s0x3be060e07393bc51%3A0xf96e044991e337e9!2sutu!3m2!1d21.069049099999997!2d73.1332281!5e0!3m2!1sen!2sin!4v1644517146290!5m2!1sen!2sin"width="1150" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
							
						</div>

						<div class="row">
							<div class="col-md-3">
								<h2 class="section-title text-left">Address</h2>

								<div class="contact-detail">
									<address>
										<p>Company Name INC. <br>
											523 Burt Street, Omaha</p>

										<p>Phone: +1 823 424 9134
											info@company.com</p>
									</address>
								</div>
							</div>
						<%--<div class="col-md-9">
								<h2 class="section-title text-left">Contact form</h2>
								<form action="Contact_us.aspx" class="contact-form" runat="server" method="post">
									<div class="row">
									 <asp:Label ID="lblMessage" runat="server"></asp:Label>
										<asp:TextBox ID="TextBox1" runat="server" placeholder="Name........"></asp:TextBox>
										<asp:TextBox ID="TextBox2" runat="server" placeholder="Email...."></asp:TextBox>
										<asp:TextBox ID="TextBox3" runat="server"  placeholder="Type  of  Policy...."></asp:TextBox>
										<asp:TextBox ID="TextBox4" runat="server" placeholder="Message......."></asp:TextBox>
										<asp:TextBox ID="TextBox5" runat="server" placeholder="Contact  Number...." TextMode="Number"></asp:TextBox>
							      	<asp:Button ID="btnclick" runat="server"  Text="Inquiry" OnClick="btnclick_Click"></asp:Button>
								</form>


							</div>--%>
						</div>
					</div>
				</div> <!-- .page -->
			</main>


			
<!---Footer close---->

		

<!--#include file='footer.aspx'-->
			
<!---Footer close---->
		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>
		
	</body>

</html>