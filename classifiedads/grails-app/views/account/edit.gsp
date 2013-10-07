<%@ page import="classifiedads.Account" %>
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
		<%--<a href="#edit-account" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--%>
		<div id="edit-account" class="content scaffold-edit" role="main">
			<h4 class="title"><span class="text"><strong>Edit ${session.username}'s</strong> Account Details</span></h4>
			<%--<h1><g:message code="default.edit.label" args="[entityName]" /></h1>--%>
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
			
			<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li class="current_page_item"><a href="${createLink(uri: '/')}">Homepage</a></li>
							<%--<li><a href="./about.html">About Us</a></li>--%>
							<li><a href="./list.html">View All Ads</a></li>
													
						</ul>					
					</div>
					<div class="span4">
						<h4>My Account</h4>
						<ul class="nav">
							
							<li><g:link controller="account" class="show" action="show" id="${session.userId}">Show Account Details</g:link></li>
							
						</ul>
					</div>
					<div class="span5">
						
						<p><img class="logo" src="${resource(dir:'themes/images', file:'logo.png')}" /></p>
						<p>Buy and Sell in the Philippines. Easy. Simple. Free. Try it today!</p>
						<br/>
					</div>					
				</div>	
			</section>
		
			<section id="copyright">
				<span>Copyright 2013 One Shoppe  All rights reserved.</span>
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
	

		</div>
	</body>
</html>
