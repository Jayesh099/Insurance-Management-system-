<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="otp.aspx.cs" Inherits="Insurance_management_System.otp" %>

<html lang="en">

    <head >

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>OTp Verification </title>

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
        <form id="form1" runat="server">
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
						<li>
						<!--	<span class="li-text">
								Put some text or
							</span> 
							<a href="#"><strong>links</strong></a> 
							<!--<span class="li-text">
								here, or some icons: 
							</span>--> 
							<span class="li-social">
								<a href="#"><i class="fa fa-facebook"></i></a> 
								<a href="#"><i class="fa fa-twitter"></i></a> 
								<a href="#"><i class="fa fa-envelope"></i></a> 
								<a href="#"><i class="fa fa-skype"></i></a>
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
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1> <i>OTP  Verification</i></h1>
                            <div class="description">
                            	<!--<p>
	                            	This is a free responsive registration form made with Bootstrap. 
	                            	Download it on <a href="http://azmind.com"><strong>AZMIND</strong></a>, customize and use it as you like!
                            	</p>-->
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    	<div class="col-sm-6 phone">
                    		<img src="assets/img/insurance3.jpg" alt="">
                           
                    	</div>
                        <div class="col-sm-5 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Otp Verification </h3>
                                     <asp:Label ID="lblMessage" runat="server"></asp:Label>
                            		<p> <asp:Label ID="Label1" runat="server"></asp:Label> Check your mail:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-pencil"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <div>
			                    	<!--<div class="form-group">
			                    		<label class="sr-only" for="form-first-name">First name</label>
                                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Email..." class="form-first-name form-control"></asp:TextBox>
			                        </div>-->
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-last-name">Last name</label>
                                         <asp:TextBox ID="TextBox2" runat="server" placeholder="OTP...." class="form-first-name form-control"></asp:TextBox>
			                        	
			                        </div>
			                        <!--<div class="form-group">
			                        	<label class="sr-only" for="form-email">Email</label>
                                         <asp:TextBox ID="TextBox3" runat="server" placeholder="Last name..." class="form-first-name form-control"></asp:TextBox>-->
			                        	<!--<input type="text" name="form-email" placeholder="Email..." class="form-email form-control" id="form-email">-->
			                        </div>
                                     <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Verfify....!" OnClick="Button1_Click" />

                               <!--  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Registration.aspx">Sign up</asp:HyperLink> -->

			                       <!-- <asp: button ID="submit" class="btn" >Sign me up!</button>-->
			                    </div>
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
            </form>
    </body>

</html>
