<%@ page import="classifiedads.Account" %>

<g:if test="${accountInstance?.username}">
	
		<span id="username-label" class="property-label"><g:message code="account.username.label" default="Username" /></span>
		<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${accountInstance}" field="username"/></span>
					
	
</g:if>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="account.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${accountInstance?.name}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="account.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" maxlength="10" required="" value="${accountInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'emailAddress', 'error')} required">
	<label for="emailAddress">
		<g:message code="account.emailAddress.label" default="Email Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="emailAddress" required="" value="${accountInstance?.emailAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="account.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${accountInstance?.address}"/>
</div>

