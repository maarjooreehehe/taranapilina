<%@ page import="classifiedads.Postad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="layout" content="main"/>
		<title>Post and Shoppe 'til you drop!</title>
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
		
		
		<section class="header_text sub">
			<img class="pageBanner" src="../themes/images/pageBanner.png" alt="New products" >
			</section>		
			
			<section class="main-content">				
				<div class="row">
					<div class="span12">					
						<h3><p>Welcome!</p></h3>
						<center><h4 class="title"><span class="text"><strong>Post</strong> Free Ad</span></h4></center>
						
						<p>Get started by posting your ad below. Type in what best describes your item or service and you're on your way!</p>
						<form action="save" method="post" class="form-stacked">
							<fieldset>
								<div id="create-postad" class="content scaffold-create" role="main">
									<g:if test="${flash.message}">
										<div class="message" role="status">${flash.message}</div>
									</g:if>
									<g:hasErrors bean="${postadInstance}">
										<ul class="errors" role="alert">
											<g:eachError bean="${postadInstance}" var="error">
												<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
											</g:eachError>
										</ul>
									</g:hasErrors>
									<g:form action="save"  enctype="multipart/form-data">
										<fieldset class="form">
											<g:render template="form"/>
										</fieldset>
										
										<fieldset class="buttons">
											<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
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
		
		<script src="../themes/js/common.js"></script>
		<script src="../themes/js/jquery.flexslider-min.js"></script>
		<script>
			$(document).ready(function() {
				$('#checkout').click(function (e) {
					document.location.href = "checkout.html";
				})
			});
		</script>
	</body>
</html>