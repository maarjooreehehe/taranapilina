
<%@ page import="classifiedads.Postad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'postad.label', default: 'Postad')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-postad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-postad" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="adname" title="${message(code: 'postad.adname.label', default: 'Adname')}" />
					
						<g:sortableColumn property="picture" title="${message(code: 'postad.picture.label', default: 'Picture')}" />
					
						<g:sortableColumn property="pictureType" title="${message(code: 'postad.pictureType.label', default: 'Picture Type')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'postad.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="location" title="${message(code: 'postad.location.label', default: 'Location')}" />
					
						<g:sortableColumn property="contactNo" title="${message(code: 'postad.contactNo.label', default: 'Contact No')}" />
					
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
