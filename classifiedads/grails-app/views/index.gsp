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
					<g:form url='[controller: "postad", action: "search"]' id="searchableForm" name="searchableForm" method="get">
						<g:textField name="q" class="input-block-level search-query" value="${params.q}" size="50" placeholder="SEARCH"/>
					</g:form>
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
							<li><a>Categories</a>
								<ul>	
									<li><g:link controller="postad" action="search" params="[q: 'category: Appliances']">Appliances</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Books']">Books</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Clothing and Accessories']">Clothing and Accessories</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Electronics']">Electronics</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Furniture']">Furniture</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Games']">Games</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Health and Beauty']">Health and Beauty</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Music']">Music</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Office and School Supplies']">Office and School Supplies</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Outdoors and Gardens']">Outdoors and Gardens</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Pets']">Pets</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Phones and Handhelds']">Phones and Handhelds</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Souvenirs and Giveaways']">Souvenirs and Giveaways</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Sports and Hobbies']">Sports and Hobbies</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Tools']">Tools</g:link></li>
								</ul>
							</li>
							<li><a>Location</a>
								<ul>	
									<li><g:link controller="postad" action="search" params="[q: 'location: Cagayan de Oro']">Cagayan de Oro</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Cebu']">Cebu</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Davao']">Davao</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Iligan City']">Iligan City</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Metro Manila']">Metro Manila</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Others']">Others</g:link></li>
								</ul>
							</li>							
							<li><a>Condition</a>
								<ul>
									<li><g:link controller="postad" action="search" params="[q: 'condition: Brand New']">Brand New</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'condition: Second Hand (Used)']">Second Hand (Used)</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'condition: Defective']">Defective</g:link></li>
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
		
		
		
		
		
		
		
		
		<g:elseif test="${session.username == 'supadmin'}">
		
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					<g:form url='[controller: "postad", action: "search"]' id="searchableForm" name="searchableForm" method="get">
						<g:textField name="q" class="input-block-level search-query" value="${params.q}" size="50" placeholder="SEARCH"/>
					</g:form>
				</div>
				
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">
						
							<g:hiddenField name="id" value="${accountInstance?.id}" />
						
							<li>Hello ${session.username}!</li>
							<li class="current_page_item"><a href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
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
							<li><a>Categories</a>
								<ul>	
									<li><g:link controller="postad" action="search" params="[q: 'category: Appliances']">Appliances</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Books']">Books</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Clothing and Accessories']">Clothing and Accessories</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Electronics']">Electronics</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Furniture']">Furniture</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Games']">Games</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Health and Beauty']">Health and Beauty</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Music']">Music</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Office and School Supplies']">Office and School Supplies</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Outdoors and Gardens']">Outdoors and Gardens</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Pets']">Pets</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Phones and Handhelds']">Phones and Handhelds</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Souvenirs and Giveaways']">Souvenirs and Giveaways</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Sports and Hobbies']">Sports and Hobbies</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Tools']">Tools</g:link></li>
								</ul>
							</li>
							<li><a>Location</a>
								<ul>	
									<li><g:link controller="postad" action="search" params="[q: 'location: Cagayan de Oro']">Cagayan de Oro</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Cebu']">Cebu</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Davao']">Davao</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Iligan City']">Iligan City</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Metro Manila']">Metro Manila</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Others']">Others</g:link></li>
								</ul>
							</li>	
							<li><a>Condition</a>
								<ul>
									<li><g:link controller="postad" action="search" params="[q: 'condition: Brand New']">Brand New</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'condition: Second Hand (Used)']">Second Hand (Used)</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'condition: Defective']">Defective</g:link></li>
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
							<li><g:link controller="account" action="list">List of All Accounts</g:link></li>
							<li><a href="./postad/list">List of All Ads</a></li>
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
		</g:elseif>
		
		
		
		
		
		
		<g:else>
		
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					<g:form url='[controller: "postad", action: "search"]' id="searchableForm" name="searchableForm" method="get">
						<g:textField name="q" class="input-block-level search-query" value="${params.q}" size="50" placeholder="SEARCH"/>
					</g:form>
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
							<li><a>Categories</a>
								<ul>	
									<li><g:link controller="postad" action="search" params="[q: 'category: Appliances']">Appliances</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Books']">Books</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Clothing and Accessories']">Clothing and Accessories</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Electronics']">Electronics</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Furniture']">Furniture</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Games']">Games</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Health and Beauty']">Health and Beauty</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Music']">Music</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Office and School Supplies']">Office and School Supplies</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Outdoors and Gardens']">Outdoors and Gardens</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Pets']">Pets</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Phones and Handhelds']">Phones and Handhelds</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Souvenirs and Giveaways']">Souvenirs and Giveaways</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Sports and Hobbies']">Sports and Hobbies</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Tools']">Tools</g:link></li>
								</ul>
							</li>
							<li><a>Location</a>
								<ul>	
									<li><g:link controller="postad" action="search" params="[q: 'location: Cagayan de Oro']">Cagayan de Oro</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Cebu']">Cebu</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Davao']">Davao</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Iligan City']">Iligan City</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Metro Manila']">Metro Manila</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Others']">Others</g:link></li>
								</ul>
							</li>	
							<li><a>Condition</a>
								<ul>
									<li><g:link controller="postad" action="search" params="[q: 'condition: Brand New']">Brand New</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'condition: Second Hand (Used)']">Second Hand (Used)</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'condition: Defective']">Defective</g:link></li>
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
