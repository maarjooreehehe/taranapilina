
<%@ page import="sendmail.Complaint" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'complaint.label', default: 'Complaint')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-complaint" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-complaint" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="complaint_Type" title="${message(code: 'complaint.complaint_Type.label', default: 'Complaint Type')}" />
					
						<g:sortableColumn property="complaint" title="${message(code: 'complaint.complaint.label', default: 'Complaint')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${complaintInstanceList}" status="i" var="complaintInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${complaintInstance.id}">${fieldValue(bean: complaintInstance, field: "complaint_Type")}</g:link></td>
					
						<td>${fieldValue(bean: complaintInstance, field: "complaint")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${complaintInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
