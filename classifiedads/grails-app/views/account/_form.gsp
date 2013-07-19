<%@ page import="classifiedads.Account" %>



<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="account.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${accountInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="account.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${accountInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="account.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${accountInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="account.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${accountInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'emailAddress', 'error')} required">
	<label for="emailAddress">
		<g:message code="account.emailAddress.label" default="Email Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="emailAddress" required="" value="${accountInstance?.emailAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'phoneNumber', 'error')} required">
	<label for="phoneNumber">
		<g:message code="account.phoneNumber.label" default="Phone Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNumber" required="" value="${accountInstance?.phoneNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="account.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${accountInstance.constraints.gender.inList}" required="" value="${accountInstance?.gender}" valueMessagePrefix="account.gender"/>
</div>

