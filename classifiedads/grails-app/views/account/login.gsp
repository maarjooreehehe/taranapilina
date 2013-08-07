<html>
	<head>
		<meta charset="utf-8">
		<meta name="layout" content="main"/>
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
		<section class="header_text sub">
			<img class="pageBanner" src="../themes/images/pageBanner.png" alt="New products" >
			</section>
		<div class="body">
		<div align="center">
			<h2>Please log in to post your ad.</h2>
		</div>
				<g:if test="${flash.message}">
					<div class="message">${flash.message}</div>
				</g:if>
				<g:hasErrors bean="${race}">
					<div class="errors">
					<g:renderErrors bean="${account}" as="list" />
					</div>
				</g:hasErrors>
				<g:form controller="account" method="post" >
					<div class="dialog" align="center">
						<table>
							<tr class='prop'>
								<td valign='top' class='name'>
								<center><label for='username'>Username: </label></center>
								</td>
								</br>
								<td valign='top' class='value '>
									<input type="text" maxlength='8' name='username' value='${account?.username}' placeholder="Enter your username"></input>
								</td>
							</tr>
							<tr class='prop'>
								<td valign='top' class='name'>
								<center><label for='password'>Password: </label></center>
								</td>
								<td valign='top' class='value '>
									<input type="password" maxlength='8' name='password' value='${account?.password}' placeholder="Enter your password" ></input>
								
								</td>
							</tr>
						</table>
					</div>

					<div class="buttons" align="center">
						<span class="button">
							<g:actionSubmit value="Log in" input tabindex="9" class="btn btn-inverse large"  />
						</span>
					</div>
					
			</g:form>
</div>
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