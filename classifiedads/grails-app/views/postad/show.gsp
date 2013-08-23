
<%@ page import="classifiedads.Postad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'postad.label', default: 'Postad')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<link href="../bootstrap/css/bootstrap-description.css" rel="stylesheet"/>
		
	</head>
	<body>
		<a href="#show-postad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-postad" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list postad">
			
				<g:if test="${postadInstance?.adname}">
				<li class="fieldcontain">
					<span id="adname-label" class="property-label"><g:message code="postad.adname.label" default="Adname" /></span>
					
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
					<span id="price-label" class="property-label"><g:message code="postad.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${postadInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postadInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="postad.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${postadInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postadInstance?.contactNo}">
				<li class="fieldcontain">
					<span id="contactNo-label" class="property-label"><g:message code="postad.contactNo.label" default="Contact No" /></span>
					
						<span class="property-value" aria-labelledby="contactNo-label"><g:fieldValue bean="${postadInstance}" field="contactNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postadInstance?.condition}">
				<li class="fieldcontain">
					<span id="condition-label" class="property-label"><g:message code="postad.condition.label" default="Condition" /></span>
					
						<span class="property-value" aria-labelledby="condition-label"><g:fieldValue bean="${postadInstance}" field="condition"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postadInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="postad.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${postadInstance}" field="category"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postadInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="postad.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${postadInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${postadInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="postad.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${postadInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${postadInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="postad.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><p class="entry"><g:fieldValue bean="${postadInstance}" field="description"/></p></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${postadInstance?.id}" />
					<g:link class="edit" action="edit" id="${postadInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
