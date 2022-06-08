<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Insurance_management_System.Registration" %>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Registration Customer</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="registrationassets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="registrationassets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="registrationassets/css/form-elements.css">
        <link rel="stylesheet" href="registrationassets/css/style.css">

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
       <form   method="post" runat="server">
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
					<!--	<li>
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
                        <div class="col-sm-7 text">
                            <h1><strong><i> Registration Form</i></strong></h1>
                            <div class="description">
                            	<!--<p>
	                            	This is a free responsive registration form made with Bootstrap. 
	                            	Download it on <a href="http://azmind.com"><strong>AZMIND</strong></a>, customize and use it as you like!
                            	</p>-->
                            </div>
                        <!--    <div class="top-big-link">
                            	<a class="btn btn-link-1" href="#">Button 1</a>
                            	<a class="btn btn-link-2" href="#">Button 2</a>
                            </div>-->
                        </div>
                        <div class="col-sm-5 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Sign up now</h3>
                            		<p>Fill in the form below to get instant access:</p>
                                    <asp:Label ID="lblMessage" runat="server"></asp:Label>

                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-pencil"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-first-name">First name</label>
                                        <div>
                                                    Name:<asp:RegularExpressionValidator ID="TextBox1validator" runat="server" ValidationExpression="[a-zA-Z ]{1,100}" ControlToValidate="TextBox1" ErrorMessage="Please Enter Valid name" ForeColor="Red"></asp:RegularExpressionValidator>
                                          </div>
                                        <asp:TextBox ID="TextBox1" runat="server"  name="form-first-name" placeholder=" Name..." class="form-first-name form-control"  required></asp:TextBox>
			                        	<!--<input type="text" name="form-first-name" placeholder="First name..." class="form-first-name form-control" id="form-first-name">-->
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-last-name"> Email</label>
                                        <div>
                                                    Email:<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox2" ErrorMessage="Please Enter Valid E-mail." ForeColor="Red"></asp:RegularExpressionValidator>
                                                    
                                        </div>
                                          <asp:TextBox ID="TextBox2" runat="server"  name="form-first-name" placeholder="Email..." class="form-first-name form-control" ></asp:TextBox>
			                        	
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-email">Password</label>
                                        <div>
                                                   Password:<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" ControlToValidate="TextBox3" ErrorMessage="Your password needs to be Upper and lower case and, at least 8 character and must have symbols." ForeColor="Red" ></asp:RegularExpressionValidator>
                                         </div>
                                        <asp:TextBox ID="TextBox3" runat="server"  name="form-first-name" placeholder="Password..." class="form-first-name form-control"  TextMode="Password" ></asp:TextBox>
			                        	
			                        </div>
                                      <div class="form-group">
			                        	<label class="sr-only" for="form-email">Contact</label>
                                          <div>
                                                         Contact Number:<asp:RegularExpressionValidator ID="TextBox14Validator" runat="server" ValidationExpression="[0-9]{10,10}" ControlToValidate="TextBox14" ErrorMessage="Please Enter 10 Digit Number Only"></asp:RegularExpressionValidator>  
                                          </div>
                                        <asp:TextBox ID="TextBox14" runat="server"  name="form-first-name" placeholder="Contact..." class="form-first-name form-control"  TextMode="number" ></asp:TextBox>
			                        	
			                        </div>

			                        <div class="form-group">
			                        	<label class="sr-only" for="form-about-yourself">FatherName</label>
                                         FatherName:<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ValidationExpression="[a-zA-Z ]{1,100}" ControlToValidate="TextBox4" ErrorMessage="Please Enter Valid name" ForeColor="Red"></asp:RegularExpressionValidator>

                                         <asp:TextBox ID="TextBox4" runat="server"  name="form-first-name" placeholder="FatherName..." class="form-first-name form-control"  ></asp:TextBox>
			                        
			                        </div>


                                     <div class="form-group">
			                        	<label class="sr-only" for="form-about-yourself">MotherName</label>
                                          MotherName:<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ValidationExpression="[a-zA-Z ]{1,100}" ControlToValidate="TextBox5" ErrorMessage="Please Enter Valid name" ForeColor="Red"></asp:RegularExpressionValidator>
                                               
                                         <asp:TextBox ID="TextBox5" runat="server"  name="form-first-name" placeholder="MotherName..." class="form-first-name form-control"  ></asp:TextBox>
			                        
			                        </div>
                                     <div class="form-group">
			                        	<label class="sr-only" for="form-about-yourself">Adhar Number</label>
                                          <div>
                                                       Adhar Number:<asp:RegularExpressionValidator ID="TextBox6validator" runat="server" ValidationExpression="[0-9]{12,12}" ControlToValidate="TextBox6" ErrorMessage="Please Enter 12 Digit Adhar number only" ForeColor="Red"></asp:RegularExpressionValidator>
                                          </div>
                                         <asp:TextBox ID="TextBox6" runat="server" TextMode="Number" name="form-first-name" placeholder="Adhar Number..." class="form-first-name form-control"   ></asp:TextBox>
			                        
			                        </div>
                                    <div class="form-group">
			                        	<label class="sr-only" for="form-about-yourself">Existing  Illness</label>
                                         Existing Illness:<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ValidationExpression="[a-zA-Z]{1,100}" ControlToValidate="TextBox5" ErrorMessage="Please Enter Valid name" ForeColor="Red"></asp:RegularExpressionValidator>
                                     <asp:TextBox ID="TextBox7" runat="server"  name="form-first-name" placeholder="Existing  Illness..." class="form-first-name form-control"   ></asp:TextBox>
			                        
			                        </div>
                                    <div class="form-group">
			                        	<label class="sr-only" for="form-about-yourself">Age </label>
                                        Age:<asp:RegularExpressionValidator ID="TextBox8validator" runat="server" ValidationExpression="[0-9]{1,3}" ControlToValidate="TextBox8" ErrorMessage="Please Enter valid age" ForeColor="Red"></asp:RegularExpressionValidator>

                                         <asp:TextBox ID="TextBox8" runat="server"  name="form-first-name" placeholder="Age ..." class="form-first-name form-control"   TextMode="Number" ></asp:TextBox>
			                        
			                        </div>
                                   
                                   

                                    <div class="form-group">
			                        	<label class="sr-only" for="form-about-yourself">Gender</label>
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" >
                                            <asp:ListItem>Male</asp:ListItem>
                                           
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:RadioButtonList>
                                     </div>

                                      <div class="form-group">
			                        	<label class="sr-only" for="form-about-yourself">DOB </label>
                                         <asp:TextBox ID="TextBox10" runat="server"  name="form-first-name" placeholder="DOB ..." class="form-first-name form-control"   TextMode="Date" ></asp:TextBox>
			                        
			                        </div>
                                     <div class="form-group">
			                        	<label class="sr-only" for="form-about-yourself">Address </label>
                                         <asp:TextBox ID="TextBox9" runat="server"  name="form-first-name" placeholder="Address ..." class="form-first-name form-control"   TextMode="MultiLine" ></asp:TextBox>
			                        
			                        </div>
                                     <div class="form-group">
			                        	<label class="sr-only" for="form-about-yourself">DOB </label>
                                           Occupation:<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ValidationExpression="[a-zA-Z0-9]{1,100}" ControlToValidate="TextBox11" ErrorMessage="Please Enter Valid Name of Occupation.    " ForeColor="Red"></asp:RegularExpressionValidator>
                                         <asp:TextBox ID="TextBox11" runat="server"  name="form-first-name" placeholder="Occupation ..." class="form-first-name form-control"   ></asp:TextBox>
			                        
			                        </div>
                                     <div class="form-group">
			                        	<label class="sr-only" for="form-about-yourself">Qualification </label>
                                         <asp:TextBox ID="TextBox12" runat="server"  name="form-first-name" placeholder="Qualification ..." class="form-first-name form-control"    ></asp:TextBox>
			                        
			                        </div>
                                     <div class="form-group">
			                        	<label class="sr-only" for="form-about-yourself">"Anual Income </label>
                                        Annual  Income:  <asp:RegularExpressionValidator ID="TextBox13validator" runat="server" ValidationExpression="[0-9]{1,10}" ControlToValidate="TextBox13" ErrorMessage="Please Enter numbers only"></asp:RegularExpressionValidator>
                                                
                                         <asp:TextBox ID="TextBox13" runat="server"  name="form-first-name" placeholder="Anual Income ..." class="form-first-name form-control"  TextMode="Number"  ></asp:TextBox>
			                         </div>
                                     
                                    <asp:Button ID="Button1" runat="server" Text="Sign Up"   class="btn-primary" OnClick="Button1_Click"/>

			                        
			                    </form>
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src="registrationassets/js/jquery-1.11.1.min.js"></script>
        <script src="registrationassets/bootstrap/js/bootstrap.min.js"></script>
        <script src="registrationassets/js/jquery.backstretch.min.js"></script>
        <script src="registrationassets/js/retina-1.1.0.min.js"></script>
        <script src="registrationassets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
</form>
    </body>

</html>