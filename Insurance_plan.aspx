<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insurance_plan.aspx.cs" Inherits="Insurance_management_System.Insurance_plan" %>

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
		<form  runat="server">
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
					<div class="container">
						<h3 class="entry-title">Choose your own insurance plan</h3>
						<p>I also offer respect, trust, dedication, integrity, and a commitment to exceeding my customers' expectations. 
							My mission is to make sure that I am consistently offering the highest quality service. Customer satisfaction is my priority,
							and I am committed to providing excellent customer service. I hope you enjoy all that I have to offer and share the experience with others. 
							For a complete description of my services, contact Jayesh Saini - Insurance Agent today!.</p>

					
				
							
						
						<div class="filter-links filterable-nav">
							<select class="mobile-filter">
								<option value="*">Show all</option>

								<!--<option value=".skyscraper">skyscraper</option>
								<option value=".shopping-center">shopping-center</option>
								<option value=".apartment">apartment</option>-->
							</select>
							<strong>Select Category: </strong>
							<a href="#" class="current wow fadeInRight" data-filter="*">Show all</a>
						
							
							<!--dynamic data -->
						<asp:Repeater ID="Repeater1" runat="server">
							<ItemTemplate>
							 <div ID="containerDiv"  runat = "server"> 
						      <div  class="col-md-3 col-sm-3 mt4" runat = "server">
							    
										<a href="#" class="current wow fadeInRight" class="wow fadeInRight" data-wow-delay=".2s" data-filter="*"><%# Eval("Category_name") %></a>
									
								</div>
								 </div>
							 </ItemTemplate>
						</asp:Repeater>
							<!--dynamic data -->
							<!--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="category_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
								<Columns>
								
									<asp:BoundField DataField="Category_name" HeaderText="Category_name" SortExpression="Category_name" />
								</Columns>
							</asp:GridView>
							<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [category] WHERE [category_id] = @category_id" InsertCommand="INSERT INTO [category] ([Category_name]) VALUES (@Category_name)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [category_id], [Category_name] FROM [category]" UpdateCommand="UPDATE [category] SET [Category_name] = @Category_name WHERE [category_id] = @category_id">
								<DeleteParameters>
									<asp:Parameter Name="category_id" Type="Int32" />
								</DeleteParameters>
								<InsertParameters>
									<asp:Parameter Name="Category_name" Type="String" />
								</InsertParameters>
								<UpdateParameters>
									<asp:Parameter Name="Category_name" Type="String" />
									<asp:Parameter Name="category_id" Type="Int32" />
								</UpdateParameters>
							</asp:SqlDataSource>-->


						
							<%--<a href="#" class="wow fadeInRight" data-wow-delay=".2s" data-filter=".skyscraper">Health Insurance  </a>
							<a href="#" class="wow fadeInRight" data-wow-delay=".4s" data-filter=".shopping-center">Life Insuance </a>
							<a href="#" class="wow fadeInRight" data-wow-delay=".6s" data-filter=".apartment">Vehicle  Insurance</a>
							--%>




							
							<!--databinding 
							<asp:DataList ID="datalist1" runat="server" >
								<ItemTemplate>
								<div class="filter-links filterable-nav">
								<div >
									<h2></h2>

								</div>
								</div>
								</ItemTemplate>
						   </asp:DataList>
							<!--databinding-->
						</div>


				<!--dynamic  policy  --->
		
											<div class="filterable-items">
		<asp:Repeater ID="rep1" runat="server" >
			<ItemTemplate>
						<div class="insurance-item filterable-item skyscraper">
								<div class="insurance-content">
									<div class="insurance-icon"><img src='Admin/PolicyImage/<%#Eval("Policy_Image") %>'  height="80" width="80"/></div>
									<h3 class="insurance-title"><%#Eval("Policy_name") %></h3>
									<p><b>Description:</b><%#Eval("Policy_description") %></p>
									<p><b>Purchase:</b><%#Eval("Policy_purchase_value") %></p>
									<p><b>Premium:</b><%#Eval("policy_claim_value") %></p>
									
									<a href="payment.aspx?amount=<%#Eval("Policy_purchase_value") %>&policy_id=<%#Eval("Policy_id") %>" class="button">Buy</a>
								</div>
							</div>
				</ItemTemplate>
			</asp:Repeater>
	
							<!--<div class="insurance-item filterable-item skyscraper">
								<div class="insurance-content"
									<div class="insurance-icon"><i class="icon-pool"></i></div>
									<h3 class="insurance-title">Group  Health  Insurance </h3>
									<p><i>Affordable Health Policy. No Sub Limits. No Surgery Capping. 10000+ Hospitals. No Medical Tests Below 45 Yrs & Hassle Free Claim Settlements. Buy Now! Covers Pre & Post Hospitalization Expenses. Enjoy 7.5%...</i></p>
									<a href="#" class="button">See details</a>
								</div>
							</div>

							<div class="insurance-item filterable-item apartment">
								<div class="insurance-content">
									<div class="insurance-icon"><i class="icon-nurse"></i></div>
									<h3 class="insurance-title">Medical 24</h3>
									<p><i>In the event of any claim/s becoming admissible under this policy, below expenses are paid subject to policy terms and conditions</i></p>
									<a href="#" class="button">See details</a>
								</div>
							</div>

							<div class="insurance-item filterable-item shopping-center">
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
							</div>-->
						
						
						
						
						
						
				
</div>

<%--						<div class="pagination">
							<span class="current">1</span>
							<a href="#">2</a>
							<a href="#">3</a>
						</div>--%>
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