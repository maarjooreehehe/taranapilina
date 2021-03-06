
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
		<g:if test="${!session.username}">
		
		<div id="list-postad" class="content scaffold-list" role="main">
			<section class="header_text sub">
			<img class="pageBanner" src="${resource(dir:'themes/images', file: 'pageBanner.png')}" >
				<h4><span>New products</span></h4>
			</section>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			
	
	<center>
		<table cellpadding = "10" width = "950px">
		<tr>
			<g:each in="${postadInstanceList}" status="i" var="postadInstance">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					<td>
						<ul class="thumbnails listing-products">
							<div class="product-box">		
								<span class="property-value" aria-labelledby="picture-label">
								<img class="picture" src="${createLink(controller:'postad', action:'picture_image', id:postadInstance.ident())}" width="300" height="250" />
								</span>
							</div>
						</ul>
					</td>
				
			&nbsp;&nbsp;
			<td>
				<ul class="thumbnails listing-products">
					<div class="product-box">	
						<b><g:link controller="postad" class="show" action="show" id="${postadInstance?.id}" class="title">${fieldValue(bean: postadInstance, field: "adname")}</g:link></br>
						<li>Owner: ${postadInstance?.owner}</li>
						<li>${fieldValue(bean: postadInstance, field: "location")}</li>
						<p class="price">${fieldValue(bean: postadInstance, field: "price")}</p>
						<g:link controller="postad" class="show" action="show" id="${postadInstance?.id}">More details</g:link>
						</b>
					</div>
				</ul>	
			</td>
					
				</tr>
			</g:each>
		</tr>
	</table>
	<div class="pagination">
				<g:paginate total="${postadInstanceTotal}" />
			</div>
	
</center>
	

			
			
			
			<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li class="current_page_item"><a href="${createLink(uri: '/')}">Hompage</a></li>
							
						</ul>					
					</div>
					<div class="span4">
						
					</div>
					<div class="span5">
						
						<p><img class="logo" src="${resource(dir:'themes/images', file:'logo.png')}" /></p>
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
		
		
			
			<div class="pagination">
				<g:paginate total="${postadInstanceTotal}" />
				
				
			</div>
			
		</g:if>
		<g:else>
		
		
			
			
<center>	
<h4><i>Available Products</i></h4>
</br>		
	<table cellpadding = "5" width = "950px">
	
			
		<tr>
		
		<g:each in="${postadInstanceList}" status="i" var="postadInstance">
			
			<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				
				<td>
				
				<ul class="thumbnails listing-products">
					<div class="product-box">	
					
					<span class="property-value" aria-labelledby="picture-label">
					<img class="picture" src="${createLink(controller:'postad', action:'picture_image', id:postadInstance.ident())}" width="300" height="250" />
					</span>
					
					</div>
				</ul>
				
				</td>
	
				<td>
		
				<ul class="thumbnails listing-products">
					<div class="product-box">	
					
				<b><g:link controller="postad" class="show" action="show" id="${postadInstance?.id}" class="title">${fieldValue(bean: postadInstance, field: "adname")}</g:link></br>
				<li>Owner: ${postadInstance?.owner}</li>
				<li>${fieldValue(bean: postadInstance, field: "location")}</li>
				<p class="price">${fieldValue(bean: postadInstance, field: "price")}</p>
				<g:link controller="postad" class="show" action="show" id="${postadInstance?.id}">More details</g:link>
				</b>
				
					</div>
				</ul>
				
				</td>
				
			</tr>
			
		</g:each>
		
		</tr>
				
			
</table>
<div class="pagination">
				<g:paginate total="${postadInstanceTotal}" />
			</div>
	
</center>		
			<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li class="current_page_item"><a href="${createLink(uri: '/')}">Homepage</a></li>
							
						</ul>					
					</div>
					
					<g:if test="${session.username == 'supadmin'}">
					<div class="span4">
					</div>
					</g:if>
					<g:else>
					<div class="span4">
					
						<h4>My Account</h4>
						<ul class="nav">
							<li><g:link controller="account" class="show" action="show" id="${session.userId}">Show Account Details</g:link></li>
							<li><g:link controller="account" class="edit" action="edit" id="${session.userId}">Edit Account Details</g:link></li>
							
						</ul>
			
					</div>
					</g:else>
					
					<div class="span5">
						
						<p><img class="logo" src="${resource(dir:'themes/images', file:'logo.png')}" /></p>
						<p>Buy and Sell in the Philippines. Easy. Simple. Free. Try it today!</p>
						<br/>
					</div>					
				</div>	
			</section>
			<section id="copyright">
				<span>Copyright 2013 One Shoppe  All right reserved.</span>
			</section>
		
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
