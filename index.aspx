<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Insurance_management_System.index"   CodeFile="~/index.aspx.cs"%>

<!DOCTYPE html>
<html lang="en">
	<head >
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>Insurance</title>

		<!-- Loading third party fonts -->
		<link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700|" rel="stylesheet" type="text/css">
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link href="fonts/lineo-icon/style.css" rel="stylesheet" type="text/css">

		<!-- Loading main css file -->
		<link rel="stylesheet" href="style.css">
		
		<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->
		  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	</head>


	<body>
		<form   runat="server">
			
			<!--- Header  start---->
	<!--#include file='header.aspx'-->

			<!---Header  close--->



			<div class="hero hero-slider">
				<ul class="slides">
					<li data-bg-image="dummy/insurance_image.jpg">
						<div class="container">
							<div class="slide-content">
								<h2 class="slide-title">Get your <strong>Life Insurance</strong></h2>
								<p><b> Is a contract between you and an insurance company.</b></p>
								<a href="Insurance_plan.aspx" class="button">See  More</a>
							</div>
						</div>
					</li>
					<li data-bg-image="dummy/insuracne_image.jpg">
						<div class="container">
							<div class="slide-content">
								<h2 class="slide-title">Get your <strong>Health  Insurance</strong></h2>
								<p><b>Health Insurance is a medical coverage that helps you meet your medical expenses by offering financial assistance..</b></p>
								<a href="Insurance_plan.aspx" class="button">See  More</a>
							</div>
						</div>
					</li>
					<li data-bg-image="dummy/healthinusurance.jpg">
						<div class="container">
							<div class="slide-content">
								<h2 class="slide-title">Get your <strong>Vehicle  Insurance</strong></h2>
								<p><b>Its primary use is to provide financial protection against physical damage or bodily injury resulting from traffic collisions and against liability that could also arise from incidents in a vehicle..</b></p>
								<a href="Insurance_plan.aspx" class="button">See  More</a>
							</div>
						</div>
					</li>
				</ul>
			</div> <!-- .hero-slider -->

			<main class="main-content">
				<div class="fullwidth-block greet-section">
					<div class="container">
						<h2 class="section-title">Welcome to our website</h2>
						<small class="section-subtitle">Affordable and efficient  insurance in the world</small>

						<div class="row">
							<div class="col-md-3">
								<div class="feature">
									<i class="icon-phone-24"></i>
									<h3 class="feature-title">24 hours Service</h3>
									<p>"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..."</p>
								</div>
							</div>
							<div class="col-md-3">
								<div class="feature">
									<i class="icon-hotel"></i>
									<h3 class="feature-title">Get Started with us</h3>
									<p>"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...".</p>
								</div>
							</div>
							<div class="col-md-3">
								<div class="feature">
									<i class="icon-luggage"></i>
									<h3 class="feature-title">Easy Claim system </h3>
									<p>"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...".</p>
								</div>
							</div>
							<div class="col-md-3">
								<div class="feature">
									<i class="icon-credit-card-hand"></i>
									<h3 class="feature-title">Online Payment</h3>
									<p>We are accepting all type of cards .</p>
								</div>
							</div>
						</div> <!-- .row -->

						
					</div> <!-- .container -->
				</div> <!-- .fullwidth-block -->

				<div class="fullwidth-block" data-bg-color="#f1f1f1">
					<div class="container">
						<h2 class="section-title">Our insurance offer</h2>
						<small class="section-subtitle">50+ insurers with one of the best prices</small>

						<div class="row">
							<div class="col-md-3">
								<div class="offer caption-top">
									<img src="dummy/healthins.jpeg" alt="offer 1">
									<div class="caption">
										<h3 class="offer-title">Upcomng  plan's </h3>
										<small>Invest 10K per month & Get Rs 1 Cr returns*....</small>
									</div>
								</div>
							</div>
							<div class="col-md-9">
								<div class="row">
									<div class="col-md-4">
										<div class="offer caption-bottom">
											<img src="dummy/healthins2.jpg" alt="offer 2">
											<div class="caption">
												<h3 class="offer-title">Most  Efficitive plan</h3>
												<small>Protect yourself from Omicron All health plans cover Covid-19 treatment</small>	
											</div>
										</div>
									</div>
									<div class="col-md-8">
										<div class="offer caption-bottom">
									<img src="dummy/life_image.jpg" alt="offer 3">
									<div class="caption">
										<h3 class="offer-title">Platinum insurance </h3>
										<small>Tax Benefits upto ₹ 75,000 under Sec. 80D</small>
									</div>
								</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-4">
										<div class="offer caption-bottom">
											<img src="dummy/vehicle-types-1548954237.jpg" alt="offer 2">
											<div class="caption">
												<h3 class="offer-title">Insurance Ka Super Hero</h3>
												<small>Save upto 85%* on Two Wheeler Insurance</small>	
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="offer caption-bottom">
											<%--<img src="dummy/download2.jpg" alt="offer 2">--%>
											<div class="caption">
												<h3 class="offer-title">Car Insurance vehicula</h3>
												<small>Conubia nostra per inceptos</small>	
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="offer caption-bottom">
											<%--<img src="dummy/upcominimageofins.jpge" alt="offer 2">--%>
											<div class="caption">
												<h3 class="offer-title">Best Insurance</h3>
												<small>Get Guaranteed returns along with Life Cover Tax Benefits under Sec 80(C) and no tax on returns*</small>	
											</div>
										</div>
									</div>
								</div> <!-- .row -->
							</div> <!-- .col-md-8 -->
						</div> <!-- .row -->

					</div> <!-- .container -->
				</div> <!-- .offer-section -->

				<div class="fullwidth-block">
					<div class="container">
						<h2 class="section-title">Upcoming Plans </h2>
						<div class="row news-list">
							<div class="col-md-4">
								<div class="news">
									<figure><img src="dummy/termins.jpg" alt=""></figure>
									<div class="date"><img src="images/icon-calendar.png" alt="">03/03/2022</div>
									<h2 class="entry-title"><a href="Insurance_plan.aspx">1 Crore life cover at ₹490/month+</a></h2>
								</div>
							</div>
							<div class="col-md-4">
								<div class="news">
									<figure><img src="dummy/retierrmentplan.jpg" alt=""></figure>
									<div class="date"><img src="images/icon-calendar.png" alt="">03/04/2022</div>
									<h2 class="entry-title"><a href="Insurance_plan.aspx">Invest ₹ 10,000/month & Get Tax Free Monthly Pension of ₹ 1,00,000*</a></h2>
								</div>
							</div>
							<div class="col-md-4">
								<div class="news">
									<figure><img src="dummy/petins.jpg" alt=""></figure>
									<div class="date"><img src="images/icon-calendar.png" alt="">03/05/2022</div>
									<h2 class="entry-title"><a href="Insurance_plan.aspx">To so many of us, pets are precious family members without whom we can't imagine our life. India has rapidly seen the evolution of pet-owners to pet parents
										and we're here to tell you about the ultimate safeguard for your furry babies: pet insurance plans!</a></h2>
								</div>
							</div>
						</div> <!-- .row -->
					</div> <!-- .container -->
				</div> <!-- .latest-news-section -->

				<div class="fullwidth-block" data-bg-color="#0f75bd">
					<div class="container">
						<div class="testimonial-slider">
							<ul class="slides">
								<li>
									<blockquote>“Take risks in your life, If you win, you can lead! If you loose, you can guide!.<cite>Swami-vivekananda</cite></blockquote>
								</li>
								<li>
									<blockquote>A dream is not that which you see while sleeping, it is something that does not let you sleep.<cite>APJ-Abdul-kalam</cite></blockquote>
								</li>
								<li>
									<blockquote>The best  way to  predict  ypur future   is to  create  it   .<cite>Abraham   Lincoln</cite></blockquote>
								</li>
							</ul>
						</div>
					</div> <!-- .container -->
				</div> <!-- .fullwidth-block -->

				<div class="fullwidth-block">
					<div class="container">
						<h2 class="section-title">Our partners</h2>

						<div class="partners">
							<a href="#"><img src="dummy/money-logo.png" alt=""></a>
							<a href="#"><img src="dummy/partner-logo-01.jpg" alt=""></a>
							<a href="#"><img src="dummy/partner-logo-02.jpg" alt=""></a>
							<a href="#"><img src="dummy/partner-logo-03.jpg" alt=""></a>
							<a href="#"><img src="dummy/partner-logo-04.jpg" alt=""></a>
						</div> <!-- .partners -->
					</div> <!-- .container -->
				</div> <!-- .fullwidth-block -->
				

						
					<table align="center"border="6" >
						<Center><h2>Contact   us </h2></Center>	
						<asp:Label ID="lblMessage" runat="server"></asp:Label>
						<tr><td><asp:TextBox ID="txtname"  runat="server" placeholder="Name......."/></td></tr>
						<tr><td><asp:TextBox ID="txtname2"  runat="server" placeholder="Email......."/></td></tr>
						<tr><td><asp:TextBox ID="txtname3"  runat="server" placeholder="Type of policy......."/></td></tr>
						<tr><td><asp:TextBox ID="txtname4"  runat="server" placeholder="Message......."/></td></tr>
						<tr><td><asp:TextBox ID="txtname5"  runat="server" placeholder="Contact......."/></td></tr>
						<tr><td><asp:Button  ID="btnsubmit"  runat="server" Text="submit" OnClick="btnsubmit_Click" /></td></tr>
					</table>
						

						
				



				<div class="fullwidth-block">
					<div class="map">

						<iframe src="https://www.google.com/maps/embed?pb=!1m26!1m12!1m3!1d238240.72501873772!2d72.82394563337321!3d21.092171149680652!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m11!3e6!4m3!3m2!1d21.1406229!2d72.7939379!4m5!1s0x3be060e06f076ecd%3A0xbc46d6b548d42a5f!2sbmiit!3m2!1d21.067831299999998!2d73.1306829!5e0!3m2!1sen!2sin!4v1644502818040!5m2!1sen!2sin" width="1500" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
					</div>
				</div>
			</main>

<!---Footer close---->

<!--#include file='footer.aspx'-->
			
<!---Footer close --->
		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>
		</form>
	</body>

</html>