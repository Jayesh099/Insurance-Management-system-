<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Claim.aspx.cs" Inherits="Insurance_management_System.Claim" %>

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
						<a href="index.aspx">Home</a>
						<span>Insurance</span>
					</div>
				</div>

				<div class="page">
						<h2>Welcome to  Magical  Insurance </h2>
					<br/>
					<br/>
					<p>An insurance claim is simply a request made concerning an insurance policy. When you make an insurance claim, you have usually suffered some type of loss or your property has sustained damage that is caused by one of the named perils insured by your insurance policy. </p>
					<br/><br/>
					<Center><h2>How Does an Insurance Claim Work?</h2></center>
					<br/>

<p>Many factors dictate what your claims process will look like. It could involve mailing documents, calling a representative, using the company's app, or a combination of these actions.

Your claims process depends on how much you have to pay before your provider does, called the "deductible." You pay your deductible, and your provider pays the rest of the loss. If you need to find your basic coverage, look for the declaration page of your policy to find it. 

Your claims process will also depend on the type of claim you are making. Home and personal property claims can become lengthy processes. You may have meetings with adjusters, get approvals for estimates, make repairs, or replace items. The process for health insurance can differ in that it often takes place without your involvement. So  fill  the given  form  given  below  for   the futher  process</p>
					<br/>
					<br/>
					<center><b>Our  Agent will  Appraches  toward    you  as  soon as  possible</b></center>
					<br/>



						<!--Form  started --->
						<form runat="server"  >
						   <table   align="center" border="8	"  >
							 <center>  <h1 style="text-decoration-color:h1{text-decoration-color:unset; }">Claim  Form</h1></center>
							    <asp:Label ID="lblMessage" runat="server"></asp:Label>
											<tr>
												
													<td><asp:Label ID="lblpolicynumber" runat="server" Text="Order Id"  ></asp:Label></td>
												<td>
													<asp:TextBox type="Text" ID="txtclaimpolicynumber" runat="server" Placeholder="Enter Your Order id"    ></asp:TextBox></td>
												</td>
											</tr>
											<tr>
												
													<td><asp:Label ID="lblIntimationdate" runat="server" Text="Intimation Date:" ></asp:Label></td>
												<td>
													<asp:TextBox type="Date" ID="intimationdate" runat="server"   ></asp:TextBox></td>
												</td>			
											</tr>
											<tr>
												
												<td><asp:Label ID="lbldescription" runat="server" Text="Description:"></asp:Label></td>
												<td>
													<asp:TextBox TextMode="Multiline" ID="txtDescription" runat="server" Placeholder="Description About claim." ></asp:TextBox></td>
												</td>
											</tr>
											
											<tr>
												
													<td> <asp:Label ID="imageupload" runat="server" required=""  Text="Upload  a single pdf  of  complete bill"></asp:Label></td>
                                                        
													<td>	<asp:FileUpload ID="FileUpload1" runat="server"  accept=".pdf" ></asp:FileUpload >
												</td>
											</tr>
											
											
											
											<tr>
												
													<td><asp:Label ID="lbltotalamount" runat="server" Text="Totalamount:"  ></asp:Label></td>
												<td>
													<asp:TextBox type="number" ID="txttotalamount" runat="server"       Placeholder="Total Amount for Claim."></asp:TextBox></td>
												</td>
											</tr>
											<tr>
												
												
												
													<td>
														<asp:Button ID="btnclaim" runat="server" Text="Claim" OnClick="btnclaim_Click" />
													</td>
												
											</tr>
										</table>
									</center>
								</div>
							</form>


						<!-- Form  started --->






				</div> 
			</main>


			
<!---Footer close---->
		
		<div style="margin-top: 168px;">
			<!--#include file='footer.aspx'-->
			</div>

			
<!---Footer close---->

		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>
		</form>
	</body>

</html>