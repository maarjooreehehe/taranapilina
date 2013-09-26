<%@ page import="classifiedads.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="extramain"/>
		<title>Post and Shoppe 'til you drop!</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">      
		<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
		
		<link href="themes/css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="themes/css/flexslider.css" rel="stylesheet"/>
		<link href="themes/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="themes/js/jquery-1.7.2.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>				
		<script src="themes/js/superfish.js"></script>	
		<script src="themes/js/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
	</head>
	<body>
		<g:if test="${!session.username}">
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					<form method="POST" class="search_form">
						<input type="text" class="input-block-level search-query" Placeholder="QWERTY">
					</form>
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">				
							<li class="current_page_item"><a href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
							<g:if test="${!session.username}">
							<li><g:link controller="account" action="login">Login</a></g:link></li>					
							</g:if>
							<li><g:link controller="account" action="create">Register</g:link></li>		
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">
			
					<a class="home" href="${createLink(uri: '/')}" class="logo pull-left"><img src="themes/images/logo.png" class="site_logo" alt=""></a>
					
					<nav id="menu" class="pull-right">
						<ul>
							<li><g:link controller="postad" action="list">View All Ads</g:link></li>
							<li><a href="#">Categories</a>
								<ul>									
									<li><a href="#">Real State</a></li>
									<li><a href="#">Phones</a></li>
									<li><a href="#">Cars and Automotives</a></li>
								</ul>
								</li>			
							<li><a href="#">Location</a>
								<ul>									
									<li><a href="#">Manila</a></li>
									<li><a href="#">CDO</a></li>
									<li><a href="#">Iligan</a></li>
								</ul>
							</li>							
							<li><a href="#">Price Range</a>
								<ul>									
									<li><a href="#">Under P100</a></li>
									<li><a href="#">P100 to P200</a></li>
									<li><a href="#">P250 to P500</a></li>
									<li><a href="#">P500 to P1000</a></li>
									<li><a href="#">P1000 and above</a></li>
								</ul>
							</li>
							<li><a href="#">Condition</a>
								<ul>									
									<li><a href="#">Brand New</a></li>
									<li><a href="#">Second Hand (Used)</a></li>
									<li><a href="#">Defective</a></li>
								</ul>
							</li>	
						</ul>
					</nav>
				</div>
			</section>
			<section  class="homepage-slider" id="home-slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<img src="themes/images/carousel/banner-1.jpg" alt="" />
						</li>
						<li>
							<img src="themes/images/carousel/banner-2.jpg" alt="" />
							<div class="intro">
								<h1>Mid season sale</h1>
								<p><span>Up to 50% Off</span></p>
								<p><span>On selected items online and in stores</span></p>
							</div>
						</li>
					</ul>
				</div>			
			</section>
			<section class="header_text">
				We manually review every ad and seller for your safety. We don't offer reviews of sellers as they can be inaccurate.
				<br/>We recommend you meet the seller. Avoid receiving items by post and NEVER send money in advance!
			</section>
			<section class="main-content">
				<div class="row">
					<div class="span12">													
						<br/>
								
				</div>
			</section>
			
			<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li class="current_page_item"><a href="${createLink(uri: '/')}">Homepage</a></li>
							<li><a href="./about.html">About Us</a></li>
						</ul>					
					</div>
					<div class="span4">
					</div>
					<div class="span5">
						<p class="logo"><img src="themes/images/logo.png" class="site_logo" alt=""></p>
						<p>Buy and Sell in the Philippines. Easy. Simple. Free. Try it today!</p>
						<br/>
					</div>					
				</div>	
			</section>
			<section id="copyright">
				<span>Copyright 2013 One Shoppe  All right reserved.</span>
			</section>
		</div>
		<script src="themes/js/common.js"></script>
		<script src="themes/js/jquery.flexslider-min.js"></script>
		<script type="text/javascript">
			$(function() {
				$(document).ready(function() {
					$('.flexslider').flexslider({
						animation: "fade",
						slideshowSpeed: 4000,
						animationSpeed: 600,
						controlNav: false,
						directionNav: true,
						controlsContainer: ".flex-container" // the container that holds the flexslider
					});
				});
			});
		</script>
		</g:if>
		<g:else>
		
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					<form method="POST" class="search_form">
						<input type="text" class="input-block-level search-query" Placeholder="QWERTY">
					</form>
				</div>
				
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">
						
							<g:hiddenField name="id" value="${accountInstance?.id}" />
						
							<li>Hello ${session.username}!</li>
							<li class="current_page_item"><a href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
							<li><g:link controller="postad" action="create">Post Ad</a></g:link></li>
							<li><g:link controller="account" action="logout">Logout</a></g:link></li>
						</ul>
						<g:if test="${!session.username}">
						<li><g:link controller="account" action="login">Login</a></g:link></li>					
						</g:if>
					</div>
				</div>
			</div>
		</div>
		
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">
			
					<a class="home" href="${createLink(uri: '/')}" class="logo pull-left"><img src="themes/images/logo.png" class="site_logo" alt=""></a>
					
					<nav id="menu" class="pull-right">
						<ul>
							<li><g:link controller="postad" action="list">View All Ads</g:link></li>
							<li><a href="#">Categories</a>
								<ul>									
									<li><a href="#">Real State</a></li>
									<li><a href="#">Phones</a></li>
									<li><a href="#">Cars and Automotives</a></li>
								</ul>
								</li>			
							<li><a href="#">Location</a>
								<ul>									
									<li><a href="#">Manila</a></li>
									<li><a href="#">CDO</a></li>
									<li><a href="#">Iligan</a></li>
								</ul>
							</li>							
							<li><a href="#">Price Range</a>
								<ul>									
									<li><a href="#">Under P100</a></li>
									<li><a href="#">P100 to P200</a></li>
									<li><a href="#">P250 to P500</a></li>
									<li><a href="#">P500 to P1000</a></li>
									<li><a href="#">P1000 and above</a></li>
								</ul>
							</li>
							<li><a href="#">Condition</a>
								<ul>									
									<li><a href="#">Brand New</a></li>
									<li><a href="#">Second Hand (Used)</a></li>
									<li><a href="#">Defective</a></li>
								</ul>
							</li>	
						</ul>
					</nav>
				</div>
			</section>
			<section  class="homepage-slider" id="home-slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<img src="themes/images/carousel/banner-1.jpg" alt="" />
						</li>
						<li>
							<img src="themes/images/carousel/banner-2.jpg" alt="" />
							<div class="intro">
								<h1>Mid season sale</h1>
								<p><span>Up to 50% Off</span></p>
								<p><span>On selected items online and in stores</span></p>
							</div>
						</li>
					</ul>
				</div>			
			</section>
			<section class="header_text">
				We manually review every ad and seller for your safety. We don't offer reviews of sellers as they can be inaccurate.
				<br/>We recommend you meet the seller. Avoid receiving items by post and NEVER send money in advance!
			</section>
			<section class="main-content">
				<div class="row">
					<div class="span12">													
						<br/>
								
				</div>
			</section>
			
			<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li class="current_page_item"><a href="${createLink(uri: '/')}">Hompage</a></li>
							<li><a href="./about.html">About Us</a></li>
						</ul>					
					</div>
					<div class="span4">
						<h4>My Account</h4>
						<ul class="nav">
							<li><g:link controller="account" class="show" action="show" id="${session.userId}">Show Account Details</g:link></li>
							<li><g:link controller="account" class="edit" action="edit" id="${session.userId}">Edit Account Details</g:link></li>
							<li><a href="./postad/list">My Posted Ads</a></li>
						</ul>
					</div>
					<div class="span5">
						<p class="logo"><img src="themes/images/logo.png" class="site_logo" alt=""></p>
						<p>Buy and Sell in the Philippines. Easy. Simple. Free. Try it today!</p>
						<br/>
					</div>					
				</div>	
			</section>
			<section id="copyright">
				<span>Copyright 2013 One Shoppe  All right reserved.</span>
			</section>
		</div>
		<script src="themes/js/common.js"></script>
		<script src="themes/js/jquery.flexslider-min.js"></script>
		<script type="text/javascript">
			$(function() {
				$(document).ready(function() {
					$('.flexslider').flexslider({
						animation: "fade",
						slideshowSpeed: 4000,
						animationSpeed: 600,
						controlNav: false,
						directionNav: true,
						controlsContainer: ".flex-container" // the container that holds the flexslider
					});
				});
			});
		</script>
		</g:else>
	</body>
</html>
