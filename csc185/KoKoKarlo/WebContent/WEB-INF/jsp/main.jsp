<%@ include file="/WEB-INF/jsp/include.jsp" %>

<html>
  <head>
  <title>Main Page</title>
  <script type="text/javascript" src="./js/test.js"></script>
  <link rel="stylesheet" href="./css/test.css" type="text/css"/>
  <script type="text/javascript">
  //window.onload = test;
  </script>
  </head>
  <body>
     
    <h3>Projects</h3>
    <table>
    	<tr>
    		<th>Project Name</th>
    		</tr>
    	<c:forEach items="${model.projects}" var="project">
    		
    		<tr>
    			<td><c:out value="${project.name}" /></td>
    		</tr>    		
    	</c:forEach>	
    	
    </table>
    <br>
    <a href="<c:url value="login.htm" />">Back to Login page</a>
  </body>
</html>