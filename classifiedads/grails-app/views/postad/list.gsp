
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
		<a href="#list-postad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		
		<div id="list-postad" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="adname" title="${message(code: 'postad.adname.label', default: 'Name of Ad')}" />
					
						<g:sortableColumn property="picture" title="${message(code: 'postad.picture.label', default: 'Picture')}" />
					
						<g:sortableColumn property="pictureType" title="${message(code: 'postad.pictureType.label', default: 'Type of Picture')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'postad.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="location" title="${message(code: 'postad.location.label', default: 'Location')}" />
					
						<g:sortableColumn property="contactNo" title="${message(code: 'postad.contactNo.label', default: 'Contact No of Seller')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${postadInstanceList}" status="i" var="postadInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${postadInstance.id}">${fieldValue(bean: postadInstance, field: "adname")}</g:link></td>
					
						<td>${fieldValue(bean: postadInstance, field: "picture")}</td>
					
						<td>${fieldValue(bean: postadInstance, field: "pictureType")}</td>
					
						<td>${fieldValue(bean: postadInstance, field: "price")}</td>
					
						<td>${fieldValue(bean: postadInstance, field: "location")}</td>
					
						<td>${fieldValue(bean: postadInstance, field: "contactNo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${postadInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
