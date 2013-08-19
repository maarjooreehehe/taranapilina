<%@ page import="classifiedads.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Welcome!</title>
		<section class="header_text">
				<center>WELCOME, YOU ARE NOW REGISTERED TO TARANAPILINA!</center>
				<center><br/>YOU CAN NOW POST YOUR AD</center> 
				<center><br/>ANYTIME, ANYWHERE.</center>
			</section>
		</head>
	<body>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${accountInstance?.id}" />
					<g:link class="show" action="show" id="${accountInstance?.id}"><g:message code="default.button.your details.label" default="Your Details" /></g:link>
					
					<g:hiddenField name="id" value="${accountInstance?.id}" />
					<g:link class="login" action="login" id="${accountInstance?.id}"><g:message code="default.button.log in.label" default="Log in" /></g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
