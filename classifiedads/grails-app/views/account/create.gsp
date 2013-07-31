<%@ page import="classifiedads.Account" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Post and Shoppe 'til you drop!</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">      
		<link href="../bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">		
		<link href="../themes/css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="../themes/css/flexslider.css" rel="stylesheet"/>
		<link href="../themes/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="../themes/js/jquery-1.7.2.min.js"></script>
		<script src="../bootstrap/js/bootstrap.min.js"></script>				
		<script src="../themes/js/superfish.js"></script>	
		<script src="../themes/js/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
	</head>
    <body>		
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					<form method="post" class="search_form">
						
						<input type="text" class="input-block-level search-query" placeholder="eg. T-sirt">
					</form>
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">				
							<li><a href="#">Login</a></li>					
							<li><g:link controller="account" action="create">Register</g:link></li>		
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<a class="home" href="${createLink(uri: '/')}" class="logo pull-left"><img src="../themes/images//logo.png" class="site_logo" alt=""></a>
					<nav id="menu" class="pull-right">
						<ul>
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
			<section class="header_text sub">
			<img class="pageBanner" src="../themes/images/pageBanner.png" alt="New products" >
			</section>			
			<section class="main-content">				
				<div class="row">
					<div class="span5">					
						<h4 class="title"><span class="text"><strong>Register</strong> Form</span></h4>
						<form action="save" method="post" class="form-stacked">
							<fieldset>
								<div id="create-account" class="content scaffold-create" role="main">
									<g:if test="${flash.message}">
										<div class="message" role="status">${flash.message}</div>
									</g:if>
									
									<g:hasErrors bean="${accountInstance}">
										<ul class="errors" role="alert">
											<g:eachError bean="${accountInstance}" var="error">
												<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
											</g:eachError>
										</ul>
									</g:hasErrors>
									
									<g:form action="save" >
										<fieldset class="form">
											<g:render template="form"/>
										</fieldset>
										<hr>
										
											<fieldset class="buttons">
											<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create Your Account')}" />
											</fieldset>
										
									</g:form>
								</div>							                            
								
							</fieldset>
						</form>					
					</div>				
				</div>
			</section>			
			<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li><a href="./index.html">Homepage</a></li>  
							<li><a href="./about.html">About Us</a></li>
							<li><a href="./contact.html">Contac Us</a></li>
							<li><a href="./cart.html">Your Cart</a></li>
							<li><a href="./register.html">Login</a></li>							
						</ul>					
					</div>
					<div class="span4">
						<h4>My Account</h4>
						<ul class="nav">
							<li><a href="#">My Account</a></li>
							<li><a href="#">Order History</a></li>
							<li><a href="#">Wish List</a></li>
							<li><a href="#">Newsletter</a></li>
						</ul>
					</div>
					<div class="span5">
						<p class="logo"><img src="../themes/images/logo.png" class="site_logo" alt=""></p>
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
		<script>
			$(document).ready(function() {
				$('#checkout').click(function (e) {
					document.location.href = "checkout.html";
				})
			});
		</script>		
    </body>
</html>