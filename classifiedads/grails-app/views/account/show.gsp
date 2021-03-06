<%@ page import="classifiedads.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="layout" content="mainpost">
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
			<h4><span>My Account Details</span></h4>
		</section>

		
			
				<g:if test="${accountInstance?.name}">
				<li class="fieldcontain">
				<strong>Name: &nbsp;</strong>
					<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${accountInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.username}">
				<li class="fieldcontain">
				<strong>Username: &nbsp;</strong>
					<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${accountInstance}" field="username"/></span>

				</li>
				</g:if>
						
				<g:if test="${accountInstance?.password}">
				<li class="fieldcontain">
				<strong>Password: &nbsp;</strong>
					<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${accountInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.emailAddress}">
				<li class="fieldcontain">
				<strong>Email Address: &nbsp;</strong>
				<span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${accountInstance}" field="emailAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.address}">
				<li class="fieldcontain">
				<strong>Address: &nbsp;</strong>	
				<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${accountInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
			
				<g:if test="${accountInstance?.dateCreated}">
				<li class="fieldcontain">
				<strong>Date Created: &nbsp;</strong>	
				<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${accountInstance?.dateCreated}" type="datetime" style="LONG" timeStyle="SHORT"/></span>
					
				</li>
				</g:if>
				
				
				<g:if test="${accountInstance?.lastUpdated}">
				<li class="fieldcontain">
				<strong>Last Updated: &nbsp;</strong>	
				<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${accountInstance?.lastUpdated}" type="datetime" style="LONG" timeStyle="SHORT"/></span>
					</br>
					</br>
				</li>
				</g:if>
				
				
			</ol>
			
			<g:if test="${session.username == 'supadmin'}">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${accountInstance?.id}" />
					<g:actionSubmit class="delete" action="delete" value="Delete" input tabindex="9" class="btn btn-inverse large" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			</g:if>
			
			<g:else>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${accountInstance?.id}" />
					<g:actionSubmit class="Edit" action="edit" value="Edit Account" input tabindex="9" class="btn btn-inverse large" />
					<g:actionSubmit class="delete" action="delete" input tabindex="9" class="btn btn-inverse large" value="Create Ad" value="Delete Account" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			</g:else>
		
		
		<section id="footer-bar">
				<div class="row">
					<div class="span3">
					<g:if test="${session.username == 'supadmin'}">
						<h4>Navigation</h4>
						<ul class="nav">
							<li class="current_page_item"><a href="${createLink(uri: '/')}">Homepage</a></li>
							<li><g:link controller="account" action="list">List of All Accounts</g:link></li>
							<li><a href="./postad/list">List of All Ads</a></li>	
						</ul>		
					</g:if>
					<g:else>
						<h4>Navigation</h4>
						<ul class="nav">
							<li class="current_page_item"><a href="${createLink(uri: '/')}">Homepage</a></li>
							<li><g:link controller="postad" action="list">View All Ads</g:link></li>
						</ul>	
					</g:else>
					</div>
					<div class="span4">
						
					</div>
					<div class="span5">
						<p><img class="logo" src="${resource(dir:'themes/images', file: 'logo.png')}" ></p>
						
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
	</body>
</html>
