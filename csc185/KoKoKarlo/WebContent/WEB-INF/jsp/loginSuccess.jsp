<%@ include file="/WEB-INF/jsp/include.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><fmt:message key="title2"/></title>
</head>
<body>
	<h1><fmt:message key="heading"/></h1>
    <p><fmt:message key="greeting"/></p>
    <h3>Log in Success!!</h3>
    
    
    <br>
    <a href="<c:url value="login.htm"/>">back to login page..</a>
    <br>
</body>
</html>