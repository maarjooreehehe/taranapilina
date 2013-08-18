
<%@ page import="classifiedads.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<head>
		<meta charset="utf-8">
		<meta name="layout" content="mainmain"/>
		<title>Post and Shoppe 'til you drop!</title>
		<!-- bootstrap -->
		<link rel="stylesheet" href="${resource(dir:'bootstrap/css', file: 'bootstrap.min.css')}" />      
		<link rel="stylesheet" href="${resource(dir:'bootstrap/css', file: 'bootstrap-responsive.min.css')} "/>
		<link rel="stylesheet" href="${resource(dir:'themes/css/bootstrap', file: 'bootstrap.css')} "/>
		
		<!-- global styles -->
		<link rel="stylesheet" href="${resource(dir:'themes/css', file: 'flexslider.css')} "/>
		<link rel="stylesheet" href="${resource(dir:'themes/css', file: 'main.css')} "/>

		<!-- scripts -->
		<script src="../themes/js/jquery-1.7.2.min.js"></script>
		<script src="../bootstrap/js/bootstrap.min.js"></script>				
		<script src="../themes/js/superfish.js"></script>	
		<script src="../themes/js/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="../js/respond.min.js"></script>
		<![endif]-->
	</head>
	<body>
		<section class="header_text sub">
			<img class="pageBanner" src="${resource(dir:'themes/images', file: 'pageBanner.png')}" >
			<h4><span>My Account</span></h4>
		</section>
		<section class="main-content">				
				<div class="row">				
					<div class="span5">
						<div>
							<h4 class="title"><span class="text"><strong>Account</strong> Details</span></h4>
							<div class="dialog" align="left">
								<table>
									<g:if test="${accountInstance?.name}">
										<strong>Name: &nbsp;</strong>
										<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${accountInstance}" field="name"/></span>
									</g:if>
									</br>
									
									<g:if test="${accountInstance?.username}">
										<strong>Username: &nbsp;</strong>
										<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${accountInstance}" field="username"/></span>
									</g:if>
									
									</br>
									<g:if test="${accountInstance?.password}">
										<strong>Password: &nbsp;</strong>
										<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${accountInstance}" field="password"/></span>
										
									</g:if>
									
								</table>
							</div>
							<h5>OTHER INFORMATION</h5>
							<div class="dialog" align="left">
								<table>
									<g:if test="${accountInstance?.emailAddress}">
										<strong>Email Adress: &nbsp;</strong>
										<span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${accountInstance}" field="emailAddress"/></span>
									</g:if>
									</br>
									
									<g:if test="${accountInstance?.address}">
										<strong>Adress: &nbsp;</strong>					
										<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${accountInstance}" field="address"/></span>
									</g:if>
									</br>
									
									<g:if test="${accountInstance?.dateCreated}">
										<strong>Date Registered: &nbsp;</strong>					
										<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${accountInstance?.dateCreated}" type="date" style="LONG" /></span>
									</g:if>
								</table>
							</div>
							</br>
							
							<g:form>
								<fieldset class="buttons">
									<g:hiddenField name="id" value="${accountInstance?.id}" />
									<g:actionSubmit class="delete" action="delete" value="Deactivate Account" input tabindex="9" class="btn btn-inverse large" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure? Deactivating your account means all your details and posted ads will be deleted. Proceed?')}');" />
								</fieldset>
							</g:form>
						</div>
					</div>
					<div class="span7">					
						<h4 class="title"><span class="text"><strong>Edit </strong>Account</span></h4>
						<div id="edit-account" class="content scaffold-edit" role="main">
							<g:if test="${flash.message}">
								<div class="message" role="status">Your account is successfully updated!</div>
								
							</g:if>
							
						
						<g:hasErrors bean="${accountInstance}">
							<ul class="errors" role="alert">
								<g:eachError bean="${accountInstance}" var="error">
									<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
								</g:eachError>
							</ul>
						</g:hasErrors>
						
						<g:form method="post" >
							<g:hiddenField name="id" value="${accountInstance?.id}" />
							<g:hiddenField name="version" value="${accountInstance?.version}" />
								<fieldset class="form">
									<g:render template="formForEdit"/>
								</fieldset>
								
								<fieldset class="buttons">
									<g:actionSubmit class="save" action="update" input tabindex="9" class="btn btn-inverse large" value="Save Changes" />
									
								</fieldset>
						</g:form>
					</div>
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
							
						</ul>
					</div>
					<div class="span5">
						<p class="logo"><link rel="site_logo" href="${resource(dir: 'themes/images', file: 'logo.png')}" alt=""></p>
						
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
