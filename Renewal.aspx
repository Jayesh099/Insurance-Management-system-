<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Renewal.aspx.cs" Inherits="Insurance_management_System.Renewal" %>

<html lang="en">
	<head >
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>Insurance | Insurances type</title>

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

	</head>


	<body>
		<form action=""  method="post" runat="server">

			<!----- Header  start----->

		<!--#include file='header.aspx'-->

			<!----- Header  start----->



			<main class="main-content">
				<div class="breadcrumbs">
					<div class="container">
						<a href="index.html">Home</a>
						<span>Insurance</span>
					</div>
				</div>

				<div class="page">
					<div class="container">
						<h3 class="entry-title">Renewal </h3>
						<p><i>Claim descriptions represent a list of claims types that AD FS supports and that may be published in federation metadata. ...
							These claim descriptions are used by various components of the Federation Service. Each claim description includes
							a claim type URI, name, publishing state, and description..</i></p>

						<div class="filter-links filterable-nav">
							<!--<select class="mobile-filter">
								<option value="*">Show all</option>
								<option value=".skyscraper">skyscraper</option>
								<option value=".shopping-center">shopping-center</option>
								<option value=".apartment">apartment</option>
							</select>
							<strong>Select Category: </strong>
							<a href="#" class="current wow fadeInRight" data-filter="*">Show all</a>
							<a href="#" class="wow fadeInRight" data-wow-delay=".2s" data-filter=".skyscraper">Health Insurance  </a>
							<a href="#" class="wow fadeInRight" data-wow-delay=".4s" data-filter=".shopping-center">Life Insuance </a>
							<a href="#" class="wow fadeInRight" data-wow-delay=".6s" data-filter=".apartment">Vehicle  Insurance</a>
						</div>-->

						<div class="filterable-items">
							<div class="insurance-item filterable-item shopping-center">
								<div class="insurance-content">
									<div class="insurance-icon"><i class="icon-sofa"></i></div>
									<h3 class="insurance-title">Health Insurance  CLaim </h3>
									<p>A health insurance claim is a request that a health insurance policyholder submits to the Insurance Company in order to obtain the services that are covered in their health insurance policy. ...</p>
									<strong><a href="Health_claim.aspx" class="button">Claim</a></strong>
								</div>
							</div>
						

							<div class="insurance-item filterable-item skyscraper">
								<div class="insurance-content">
									<div class="insurance-icon"><i class="icon-pool"></i></div>
									<h3 class="insurance-title">Life Insurance  Claim </h3>
									<p><i>An insurance claim is a formal request to your insurance provider for reimbursement against losses  or damages that are sustained by his/her covered under your insurance policy. ... ...</i></p>
									<strong><a href="life_claim.aspx" class="button">Claim</a></strong>
								</div>
							</div>

							<div class="insurance-item filterable-item apartment">
								<div class="insurance-content">
									<div class="insurance-icon"><i class="icon-nurse"></i></div>
									<h3 class="insurance-title">Vechile Insurance Claim</h3>
									<p><i>A car insurance claim is a process wherein an insured asks the car insurance company to compensate him/her for the damages that are sustained by his/her car after an accident. ...</i></p>
									<strong><a href="vehicle_claim.aspx" class="button">Claim</a></strong>
								</div>
							</div>

							<!--<div class="insurance-item filterable-item shopping-center">
								<div class="insurance-content">
									<div class="insurance-icon"><i class="icon-weigher"></i></div>
									<h3 class="insurance-title">Endurance plan</h3>
									<p><i>The term endurance training generally refers to training the aerobic system as opposed to the anaerobic system</i></p>
									<a href="#" class="button">See details</a>
								</div>
							</div>

							<div class="insurance-item filterable-item apartment">
								<div class="insurance-content">
									<div class="insurance-icon"><i class="icon-car"></i></div>
									<h3 class="insurance-title">Car Protect</h3>
									<p><i> Covers for the loss or damage caused to the automobile or its parts due to natural and man-made calamities</i></p>
									<a href="#" class="button">See details</a>
								</div>
							</div>

							<div class="insurance-item filterable-item skyscraper">
								<div class="insurance-content">
									<div class="insurance-icon"><i class="icon-shirt"></i></div>
									<h3 class="insurance-title">Care Health</h3>
									<p><i> Maintenance or improvement of health via the prevention, diagnosis, and treatment of disease, illness, injury, and other physical and mental impairments in human beings.” ...</i></p>
									<a href="#" class="button">See details</a>
								</div>
							</div>
						</div>

						<div class="pagination">
							<span class="current">1</span>
							<a href="#">2</a>
							<a href="#">3</a>
						</div>-->
					</div>
				</div> <!-- .page -->
			</main>


			
<!---Footer close---->

			<!--#include file='footer.aspx'-->


			
<!---Footer close---->

		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>
		</form>
	</body>

</html>