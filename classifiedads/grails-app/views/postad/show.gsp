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
			<img class="pageBanner" src="${resource(dir:'themes/images', file: 'pageBanner.png')}" >
			<h4><span>Advertisement Details</span></h4>
		</section>
		
			
				<g:if test="${postadInstance?.adname}">
				<li class="fieldcontain">
				<strong>Name of the item: &nbsp;</strong>
				<span class="property-value" aria-labelledby="adname-label"><g:fieldValue bean="${postadInstance}" field="adname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postadInstance?.picture}">
				<li class="fieldcontain">
					<span id="picture-label" class="property-label"><g:message code="postad.picture.label" default="Picture" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${postadInstance?.pictureType}">
				<li class="fieldcontain">
					<span id="pictureType-label" class="property-label"><g:message code="postad.pictureType.label" default="Picture Type" /></span>
					
						<span class="property-value" aria-labelledby="pictureType-label"><g:fieldValue bean="${postadInstance}" field="pictureType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postadInstance?.price}">
				<li class="fieldcontain">
				<strong>Price: &nbsp;</strong>
				<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${postadInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postadInstance?.location}">
				<li class="fieldcontain">
				<strong>Location: &nbsp;</strong>
				<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${postadInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postadInstance?.contactNo}">
				<li class="fieldcontain">
				<strong>Seller's Contact Number: &nbsp;</strong>	
				<span class="property-value" aria-labelledby="contactNo-label"><g:fieldValue bean="${postadInstance}" field="contactNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postadInstance?.condition}">
				<li class="fieldcontain">
				<strong>Condition: &nbsp;</strong>
				<span class="property-value" aria-labelledby="condition-label"><g:fieldValue bean="${postadInstance}" field="condition"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postadInstance?.category}">
				<li class="fieldcontain">
				<strong>Category: &nbsp;</strong>	
				<span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${postadInstance}" field="category"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postadInstance?.dateCreated}">
				<li class="fieldcontain">
				<strong>Date Created: &nbsp;</strong>	
				<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${postadInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
				
				
				<g:if test="${postadInstance?.lastUpdated}">
				<li class="fieldcontain">
				<strong>Last Updated: &nbsp;</strong>	
				<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${postadInstance?.lastUpdated}" /></span>
					</br>
					</br>
				</li>
				</g:if>
				
				
				<g:if test="${postadInstance?.description}">
				<li class="fieldcontain">
				<strong>Description: &nbsp;</strong>	
				<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${postadInstance}" field="description"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${postadInstance.picture}">
					<tr>
					
					<span class="property-value" aria-labelledby="picture-label">
					<img class="picture" src="${createLink(controller:'postad', action:'picture_image', id:postadInstance.ident())}" />
					</span>
					</tr>
				</g:if>
				
			</ol>
			<g:form>
								<fieldset class="buttons">
								
									<g:hiddenField name="id" value="${postadInstance?.id}" />
									<g:actionSubmit class="Edit" action="edit" value="Edit" input tabindex="9" class="btn btn-inverse large" />
									<g:link class="" action="uploadPicture" id="${postadInstance?.id}">Upload Picture</g:link>
									<g:actionSubmit class="delete" action="delete" value="Delete" input tabindex="9" class="btn btn-inverse large" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
								</fieldset>
							</g:form>
		
		<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li class="current_page_item"><a href="${createLink(uri: '/')}">Homepage</a></li>
							
							<li><a href="./about.html">About Us</a></li>
							<li><a href="./contact.html">Contac Us</a></li>
							<li><a href="./cart.html">Your Cart</a></li>
							<li><a href="./register.html">Login</a></li>							
						</ul>					
					</div>
					<div class="span4">
						<h4>My Account</h4>
						<ul class="nav">
							
							<li><g:link controller="account" class="show" action="show" id="${accountInstance?.id}">My Account</g:link></li>
							<li><a href="./list.html">Order History</a></li>
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
