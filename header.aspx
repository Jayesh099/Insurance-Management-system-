<!DOCTYPE html>
<html>
<head>
    <title>header</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<div id="site-content">
    <header class="site-header">
        <div class="top-header">
            <div class="container">
                <a href="index.html" id="branding">
                    <img src="images/logo.png" alt="Company Name" class="logo">
                    <div class="logo-text">
                        <h1 class="site-title">Magical Insurance </h1>
                        <small class="description"><i><b>Step  to  next  Generation</b></i></i></style></small>
                    </div>
                </a>
                <!-- #branding -->

                <div class="right-section pull-right">
                    <a href="#" class="phone">
                        <img src="images/icon-phone.png" class="icon">+0 6375677696</a>

                    <form action="#" class="search-form">
                        <input type="text" placeholder="Search...">
                        <button type="submit">
                            <img src="images/icon-search.png" alt=""></button>
                    </form>
                </div>
            </div>
            <!-- .container -->
        </div>
        <!-- .top-header -->


        <div class="bottom-header">
            <div class="container">
                <div class="main-navigation">
                    <button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
                    <ul class="menu">
                        <li class="menu-item"><a href="index.aspx">Home</a></li>
                        <li class="menu-item"><a href="aboutus.aspx">About us</a></li>
                        <li class="menu-item"><a href="Insurance_plan.aspx">Insurance plans</a></li>
                        <li class="menu-item"><a href="Claim.aspx">File a claim</a></li>
                        <!--<li class="menu-item"><a href="Renewal.aspx">Renewal</a></li>-->
                        <li class="menu-item"><a href="Contact_us.aspx">Contact</a></li>
                    </ul>
                    <!-- .menu -->
                </div>
                <!-- .main-navigation -->

                <div class="social-links">

                    <div class="dropdown">

                        <%--<button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">
                       <%=Session["user"] %>
                      



                    <span class="caret"></span></button>--%>
                        



                        <!--<ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">My Profile</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Change Password</a></li>
                      <li role="presentation" class="divider"></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Logout</a></li>
                   
                    </ul>-->
                         <div class="w3-container">
  
  <div class="w3-dropdown-hover"  style="background-color:cadetblue">
                        <a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
      &nbsp;&nbsp;
                        <a href="https://twitter.com/login?lang=en"><i class="fa fa-twitter"></i></a>
                  &nbsp;&nbsp;     
       <i class="fa fa-user" class="w3-button w3-black" aria-hidden="true">
            <%=Session["user"] %>
       </i>
    <div class="w3-dropdown-content w3-bar-block w3-border" style="background-color:cadetblue">
     <strong> <a href="Profile_page.aspx" class="w3-bar-item w3-button" style="color:black">Profile </a></strong>
      <%--<a href="#" class="w3-bar-item w3-button" style="color:black">Link 2</a>
      <a href="#" class="w3-bar-item w3-button" style="color:black">Link 3</a>--%>
    </div>
  </div>
                        <%--<a href="login.aspx"><i class="fa fa-user" aria-hidden="true"></i></a>--%>
                     &nbsp;   <span><a href="login.aspx"><i class="fa fa-sign-out" aria-hidden="true"></a></span></i>
                
</div>

                    <%--welcome  <asp:Label runat="server" Text="Label"></asp:Label>
                    --%>
                    </div>
                    <%--frop diwn  for profile --%>

                    <%--frop diwn  for profile --%>

                    <div class="mobile-navigation"></div>

                </div>

            </div>
    </header>
    <!-- .site-header -->
    </div>
 
    </body>
    </html>