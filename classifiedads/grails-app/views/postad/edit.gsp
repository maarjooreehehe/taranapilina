<%@ page import="classifiedads.Postad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="layout" content="mainpost"/>
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
			<img class="pageBanner" src="../themes/images/pageBanner.png" alt="New products" >
			<h4><span>Edit Ad Details</span></h4>
		</section>
	
		<div id="edit-postad" class="content scaffold-edit" role="main">
		<!--	<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if> -->
			<g:hasErrors bean="${postadInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${postadInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form method="post"  enctype="multipart/form-data">
				<g:hiddenField name="id" value="${postadInstance?.id}" />
				<g:hiddenField name="version" value="${postadInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				
				
				</br>
				<fieldset class="buttons">
				
					<g:actionSubmit name="save" action="update" input tabindex="9" class="btn btn-inverse large"  value="${message(code: 'default.button.update.label', default: 'Update')}" />
					
					<g:actionSubmit name="delete" action="delete"  input tabindex="9" class="btn btn-inverse large" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				
				</fieldset>
				
				<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li class="current_page_item"><a href="${createLink(uri: '/')}">Homepage</a></li>
							<li><g:link controller="postad" action="list">View All Ads</g:link></li>
													
						</ul>					
					</div>
					<div class="span4">
						<h4>My Account</h4>
						<ul class="nav">
							
							<li><g:link controller="account" class="show" action="show" id="${session.userId}">Show Account Details</g:link></li>
							
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
				<span>Copyright 2013 One Shoppe  All rights reserved.</span>
			</section>
			
			</g:form>
		
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
