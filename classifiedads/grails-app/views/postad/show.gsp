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
				
		<g:if test="${session.username == 'supadmin'}">
		<section class="header_text sub">
			<img class="pageBanner" src="${resource(dir:'themes/images', file: 'pageBanner.png')}" >
			<h4><span>Advertisement Details</span></h4>
		</section>
		<section class="main-content">				
				<div class="row">						
					<div class="span9">
						<div class="row">
							<div class="span4">
							<a class="thumbnail" data-fancybox-group="group1" >
							<g:if test="${postadInstance.picture}">
							<tr>					
								<span class="property-value" aria-labelledby="picture-label">
								<img class="picture" src="${createLink(controller:'postad', action:'picture_image', id:postadInstance.ident())}" />
								</span>
							</tr>
							</g:if>
							</a>	
							</div>
							<div class="span5">
								<address>
									
									<strong>Name of the item: </strong>
									<g:if test="${postadInstance?.adname}">
									<span class="property-value" aria-labelledby="adname-label"><g:fieldValue bean="${postadInstance}" field="adname"/></span>
									</li></g:if><br>
											
									<strong>Owner: </strong>
									<g:if test="${postadInstance?.owner}">
									<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${postadInstance}" field="owner"/></span>
									</li></g:if><br>
									
									<strong>Location: </strong>
									<g:if test="${postadInstance?.location}">
									<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${postadInstance}" field="location"/></span>
									</g:if><br>
									
									<strong>Date Posted: </strong>
									<g:if test="${postadInstance?.dateCreated}">
									<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${postadInstance?.dateCreated}" type="datetime" style="LONG" timeStyle="SHORT"/></span>
									</g:if><br>
									
									<strong>Seller's Contact Number: </strong>
									<g:if test="${postadInstance?.contactNo}">
									<span class="property-value" aria-labelledby="contactNo-label"><g:fieldValue bean="${postadInstance}" field="contactNo"/></span>
									</g:if><br>
									
									<strong>Condition: </strong>
									<g:if test="${postadInstance?.condition}">
									<span class="property-value" aria-labelledby="condition-label"><g:fieldValue bean="${postadInstance}" field="condition"/></span>
									</g:if><br>
									
									<strong>Category: </strong>
									<g:if test="${postadInstance?.category}">
									<span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${postadInstance}" field="category"/></span>
									</g:if><br>

								</address>									
								<h4><strong>Price: 
									<g:if test="${postadInstance?.price}">
									<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${postadInstance}" field="price"/></span>
									</g:if>.00<br></strong></h4></br>
									
								<g:form>
									<fieldset class="buttons">
									
									<g:hiddenField name="id" value="${postadInstance?.id}" />
																		
									<g:actionSubmit class="delete" action="delete" value="Delete" input tabindex="9" class="btn btn-inverse large" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
									</fieldset>
									
								</g:form>
							
							</div>
						</div>
						
						<div class="row">
							<div class="span9">
								<ul class="nav nav-tabs" id="myTab">
									<li class="active"><a href="#home">Description</a></li>
									
								</ul>							 
								<div class="tab-content">
									<div class="tab-pane active" id="home">
									<g:if test="${postadInstance?.description}">
									<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${postadInstance}" field="description"/></span>
									</g:if>
									</div>
								</div>							
							</div>
					</div>
				</div>
		</section>
				
				
			</ol>
							
		
		<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li class="current_page_item"><a href="${createLink(uri: '/')}">Homepage</a></li>
							<li><g:link controller="account" action="list">List of All Accounts</g:link></li>
							<li><g:link controller="postad" action="list">List of All Ads</g:link></li>
									
						</ul>					
					</div>
					<div class="span4">
						
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
		</g:if>
		
		<g:elseif test="${!session.username}">
		<section class="header_text sub">
			<img class="pageBanner" src="${resource(dir:'themes/images', file: 'pageBanner.png')}" >
			<h4><span>Advertisement Details</span></h4>
		</section>
		<section class="main-content">				
				<div class="row">						
					<div class="span9">
						<div class="row">
							<div class="span4">
							<a class="thumbnail" data-fancybox-group="group1" >
							<g:if test="${postadInstance.picture}">
							<tr>					
								<span class="property-value" aria-labelledby="picture-label">
								<img class="picture" src="${createLink(controller:'postad', action:'picture_image', id:postadInstance.ident())}" />
								</span>
							</tr>
							</g:if>
							</a>	
							</div>
							<div class="span5">
								<address>
									
									<strong>Name of the item: </strong>
									<g:if test="${postadInstance?.adname}">
									<span class="property-value" aria-labelledby="adname-label"><g:fieldValue bean="${postadInstance}" field="adname"/></span>
									</li></g:if><br>
											
									<strong>Owner: </strong>
									<g:if test="${postadInstance?.owner}">
									<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${postadInstance}" field="owner"/></span>
									</li></g:if><br>
									
									<strong>Location: </strong>
									<g:if test="${postadInstance?.location}">
									<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${postadInstance}" field="location"/></span>
									</g:if><br>
									
									<strong>Date Posted: </strong>
									<g:if test="${postadInstance?.dateCreated}">
									<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${postadInstance?.dateCreated}" type="datetime" style="LONG" timeStyle="SHORT"/></span>
									</g:if><br>
									
									<strong>Seller's Contact Number: </strong>
									<g:if test="${postadInstance?.contactNo}">
									<span class="property-value" aria-labelledby="contactNo-label"><g:fieldValue bean="${postadInstance}" field="contactNo"/></span>
									</g:if><br>
									
									<strong>Condition: </strong>
									<g:if test="${postadInstance?.condition}">
									<span class="property-value" aria-labelledby="condition-label"><g:fieldValue bean="${postadInstance}" field="condition"/></span>
									</g:if><br>
									
									<strong>Category: </strong>
									<g:if test="${postadInstance?.category}">
									<span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${postadInstance}" field="category"/></span>
									</g:if><br>

								</address>									
								<h4><strong>Price: 
									<g:if test="${postadInstance?.price}">
									<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${postadInstance}" field="price"/></span>
									</g:if>.00<br></strong></h4></br>
									
								<g:form>
									<fieldset class="buttons">
									
									<g:hiddenField name="id" value="${postadInstance?.id}" />
									<g:actionSubmit class="Edit" action="edit" value="Edit" input tabindex="9" class="btn btn-inverse large" style="display:none" />
								<!--	<g:actionSubmit class="" action="uploadPicture" value="Upload Picture" id="${postadInstance?.id}" input tabindex="9" class="btn btn-inverse large" style="display:none" /> -->
									<g:actionSubmit class="delete" action="delete" value="Delete" input tabindex="9" class="btn btn-inverse large" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" style="display:none" />
									</fieldset>
									
								</g:form>
							
							</div>
						</div>
						
						<div class="row">
							<div class="span9">
								<ul class="nav nav-tabs" id="myTab">
									<li class="active"><a href="#home">Description</a></li>
									
								</ul>							 
								<div class="tab-content">
									<div class="tab-pane active" id="home">
									<g:if test="${postadInstance?.description}">
									<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${postadInstance}" field="description"/></span>
									</g:if>
									</div>
								</div>							
							</div>
					</div>
				</div>
		</section>
				
				
			</ol>
							
		
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
		</g:elseif>
		
		
		<g:else>
		<section class="header_text sub">
			<img class="pageBanner" src="${resource(dir:'themes/images', file: 'pageBanner.png')}" >
			<h4><span>Advertisement Details</span></h4>
		</section>
		<section class="main-content">				
				<div class="row">						
					<div class="span9">
						<div class="row">
							<div class="span4">
							<a class="thumbnail" data-fancybox-group="group1" >
							<g:if test="${postadInstance.picture}">
							<tr>					
								<span class="property-value" aria-labelledby="picture-label">
								<img class="picture" src="${createLink(controller:'postad', action:'picture_image', id:postadInstance.ident())}" />
								</span>
							</tr>
							</g:if>
							</a>	
							</div>
							<div class="span5">
								<address>
									
									<strong>Name of the item: </strong>
									<g:if test="${postadInstance?.adname}">
									<span class="property-value" aria-labelledby="adname-label"><g:fieldValue bean="${postadInstance}" field="adname"/></span>
									</li></g:if><br>
											
									<strong>Owner: </strong>
									<g:if test="${postadInstance?.owner}">
									<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${postadInstance}" field="owner"/></span>
									</li></g:if><br>
									
									<strong>Location: </strong>
									<g:if test="${postadInstance?.location}">
									<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${postadInstance}" field="location"/></span>
									</g:if><br>
									
									<strong>Date Posted: </strong>
									<g:if test="${postadInstance?.dateCreated}">
									<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${postadInstance?.dateCreated}" type="datetime" style="LONG" timeStyle="SHORT"/></span>
									</g:if><br>
									
									<strong>Seller's Contact Number: </strong>
									<g:if test="${postadInstance?.contactNo}">
									<span class="property-value" aria-labelledby="contactNo-label"><g:fieldValue bean="${postadInstance}" field="contactNo"/></span>
									</g:if><br>
									
									<strong>Condition: </strong>
									<g:if test="${postadInstance?.condition}">
									<span class="property-value" aria-labelledby="condition-label"><g:fieldValue bean="${postadInstance}" field="condition"/></span>
									</g:if><br>
									
									<strong>Category: </strong>
									<g:if test="${postadInstance?.category}">
									<span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${postadInstance}" field="category"/></span>
									</g:if><br>

								</address>									
								<h4><strong>Price: 
									<g:if test="${postadInstance?.price}">
									<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${postadInstance}" field="price"/></span>
									</g:if>.00<br></strong></h4></br>
									
								<g:if test="${session.name == "${postadInstance?.owner}"}">
								<g:form>
									<fieldset class="buttons">
									<g:hiddenField name="id" value="${postadInstance?.id}" />
									<g:actionSubmit class="Edit" action="edit" value="Edit" input tabindex="9" class="btn btn-inverse large" />
								<!--	<g:actionSubmit class="" action="uploadPicture" value="Upload Picture" id="${postadInstance?.id}" input tabindex="9" class="btn btn-inverse large" /> -->
									<g:actionSubmit class="delete" action="delete" value="Delete" input tabindex="9" class="btn btn-inverse large" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
									</fieldset>
								</g:form>
								</g:if>	
								
								
								
							
							</div>
						</div>
						
						<div class="row">
							<div class="span9">
								<ul class="nav nav-tabs" id="myTab">
									<li class="active"><a href="#home">Description</a></li>
									
								</ul>							 
								<div class="tab-content">
									<div class="tab-pane active" id="home">
									<g:if test="${postadInstance?.description}">
									<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${postadInstance}" field="description"/></span>
									</g:if>
									</div>
								</div>							
							</div>
					</div>
				</div>
		</section>
				
				
			</ol>
							
		
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
							<li><g:link controller="account" class="edit" action="edit" id="${session.userId}">Edit Account Details</g:link></li>
						</ul>
					</div>
					<div class="span5">
						<p><img class="pageBanner" src="${resource(dir:'themes/images', file: 'logo.png')}" ></p>
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
		</g:else>
		
		
		
		
	</body>
</html>
