<%@ include file="/WEB-INF/jsp/include.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<title><fmt:message key="title2"/></title>
  <style>
    .error { color: red; }
  </style>
</head>
<body>
	
	<br/>
	<form:form method="post" commandName="login">	
	    Username:<form:input path="username"/><form:errors path="username" cssClass="error"/><br>
	    Password:<form:password path="password"/> <form:errors path="password" cssClass="error"/>
	    <br/>
	    <input type="submit" value="Login"/>
	</form:form>
</body>
</html>