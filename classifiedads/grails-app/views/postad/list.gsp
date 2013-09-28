
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
		
		
		<div id="list-postad" class="content scaffold-list" role="main">
			<section class="header_text sub">
			<img class="pageBanner" src="${resource(dir:'themes/images', file: 'pageBanner.png')}" >
				<h4><span>New products</span></h4>
			</section>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
	<section class="main-content">		
		<div class="row">						
			<div class="span9">								
				<ul class="thumbnails listing-products">
					<li class="span3">
						<div class="product-box">
							<tbody>
								<g:each in="${postadInstanceList}" status="i" var="postadInstance">
									<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
										<td><span class="property-value" aria-labelledby="picture-label">
											<img class="picture" src="${createLink(controller:'postad', action:'picture_image', id:postadInstance.ident())}" />
											</span>
										</td>
										<td><g:link controller="postad" class="show" action="show" id="${postadInstance?.id}" class="title">${fieldValue(bean: postadInstance, field: "adname")}</g:link></td></br>
										<td><a href="#" class="category">${fieldValue(bean: postadInstance, field: "location")}</a></td></br>
										<td><p class="price">${fieldValue(bean: postadInstance, field: "price")}</p></td>
										<td><g:link controller="postad" class="show" action="show" id="${postadInstance?.id}">More details</g:link></td>
									</tr>
								</g:each>
							</tbody>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</section>
			
			<div class="pagination">
				<g:paginate total="${postadInstanceTotal}" />
				
				
			</div>
		</div>
	</body>
</html>
