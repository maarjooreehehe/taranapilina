<%@ page import="classifiedads.Account" %>

<g:if test="${accountInstance?.username}">
	
		<strong><span id="username-label" class="property-label"><g:message code="account.username.label" default="Username: " />
		</span></strong>
		</br>
		<span class="property-value" aria-labelledby="username-label"><input name="username" required="" value="${accountInstance?.username}" disabled="${mode == 'edit'}" />
		</span>
</g:if>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'name', 'error')} required">
	</br>
	<label for="name">
		<strong><g:message code="account.name.label" default="Name:" /></strong>
	</label>
	<g:textField name="name" required="" value="${accountInstance?.name}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'password', 'error')} required">
	<label for="password">
		<strong><g:message code="account.password.label" default="Password:" /></strong>
	</label>
	<input type = "password" maxlength = '10' name="password" required="" value="${accountInstance?.password}" />
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'emailAddress', 'error')} required">
	<label for="emailAddress">
		<strong><g:message code="account.emailAddress.label" default="Email Address:" /></strong>
	</label>
	<g:textField name="emailAddress" required="" value="${accountInstance?.emailAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'address', 'error')} required">
	<label for="address">
		<strong><g:message code="account.address.label" default="Address:" /></strong>
	</label>
	<g:textField name="address" required="" value="${accountInstance?.address}"/>
</div>

