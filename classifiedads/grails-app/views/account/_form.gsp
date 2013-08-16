<%@ page import="classifiedads.Account" %>



<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="account.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${accountInstance?.name}" placeholder="Enter your complete name." class="input-xlarge"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="account.username.label" default="Username" />
		<span class="required-indicator">* (Note: Change of username is not allowed.)</span>
	</label>
	<g:textField name="username" maxlength="10" required="" value="${accountInstance?.username}" placeholder="Enter your username 6-10 characters only." class="input-xlarge"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="account.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<input type = "password" maxlength = '10' name="password" required="" value="${accountInstance?.password}" placeholder="Enter your password 6-10 characters only." class="input-xlarge" />
	
	</div>


<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'emailAddress', 'error')} required">
	<label for="emailAddress">
		<g:message code="account.emailAddress.label" default="Email Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="emailAddress" required="" value="${accountInstance?.emailAddress}" placeholder="Enter your email address." class="input-xlarge" />
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="account.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${accountInstance?.address}" placeholder="Enter your full address." class="input-xlarge"/>
</div>

