﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Health_claim.aspx.cs" Inherits="Insurance_management_System.Health_claim" %>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Registration Form Template</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

    </head>

    <body>

		<!-- Top menu -->
		<nav class="navbar navbar-inverse navbar-no-bg" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html">Bootstrap Registration Form Template</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="top-navbar-1">
					<ul class="nav navbar-nav navbar-right">
						<!--<li>
							<span class="li-text">
								Put some text or
							</span> 
							<a href="#"><strong>links</strong></a> 
							<span class="li-text">
								here, or some icons: 
							</span> -->
							<span class="li-social">
								<a href="#"><i class="fa fa-facebook"></i></a> 
								<a href="#"><i class="fa fa-twitter"></i></a> 
								<!--<a href="#"><i class="fa fa-envelope"></i></a> 
								<a href="#"><i class="fa fa-skype"></i></a>-->
							</span>
						</li>
					</ul>
				</div>
			</div>
		</nav>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-7 text">
                            <h1><i><b>Health Insuracne Claim</b></i></h1>
                            <div class="description">
                            	
                            </div>
                            
                        </div>
                        <div class="col-sm-5 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3><i><b>Vechile Insurance Claim</b></i></h3>
                            		<p>Fill in the form below to get instant Claim as soon as  possible:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-pencil"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form action="#"  method="post" runat="server">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-first-name">Policy number</label>
                                        <asp:TextBox ID="TextBox1" runat="server"  name="form-first-name" placeholder="Policy number..." class="form-first-name form-control"></asp:TextBox>
			                        	<!--<input type="text" name="form-first-name" placeholder="Policy number..." class="form-first-name form-control" id="form-first-name">-->
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-last-name">Intimation date</label>
			                        	<asp:TextBox ID="TextBox10" runat="server"  name="form-last-name" placeholder="Intimation date ..." class="form-last-name form-control"   TextMode="Date" ></asp:TextBox>
			                        </div>
			                        <div class="form-group">

			                        	<label class="sr-only" for="form-email">Date of death</label>
			                        	<asp:TextBox ID="TextBox2" runat="server"  name="form-last-name" placeholder="Date of death..." class="form-last-name form-control"   TextMode="Date" ></asp:TextBox>
			                        </div>
                                    <div class="form-group">
			                    		<label class="sr-only" for="form-first-name">Policy number</label>
                                        <asp:TextBox ID="TextBox3" runat="server"  name="form-first-name" placeholder="Hospital  name ..." class="form-first-name form-control"></asp:TextBox>
			                        	<!--<input type="text" name="form-first-name" placeholder="Policy number..." class="form-first-name form-control" id="form-first-name">-->
			                        </div>
                                    <div class="form-group">
			                    		<label class="sr-only" for="form-first-name">Policy number</label>
                                        <asp:TextBox ID="TextBox4" runat="server"  name="form-first-name" placeholder="Discharge  summary  ..." class="form-first-name form-control"></asp:TextBox>
			                        	<!--<input type="text" name="form-first-name" placeholder="Policy number..." class="form-first-name form-control" id="form-first-name">-->
			                        </div>



			                        <div class="form-group">
			                        	<label class="sr-only" for="form-about-yourself">Description   why  do    you claim </label>
			                        	<textarea name="form-about-yourself" placeholder="Description   why  do    you claim..." 
			                        				class="form-about-yourself form-control" id="form-about-yourself"></textarea>
			                        </div>
			                        <button type="submit" class="btn">claim!</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/retina-1.1.0.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>

