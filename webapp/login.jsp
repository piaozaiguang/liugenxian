<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<html>
	<head>
		<title>Login</title> 
		<link rel="stylesheet" href="/css/uikit.min.css" /> 
	</head>
	<body>
		<form method="POST" action="<c:url value="/login"/>">
			<table class="uk-table">
			    <tr>
			        <td>Username</td>  
			        <td><input type="text" name="j_username" /></td>  
			    </tr>  
			    <tr>
			        <td>Password</td>  
			        <td><input type="password" name="j_password" /></td>  
			    </tr>
			    <tr>  
			        <td><input class="uk-button uk-button-primary" type="submit" value="Login" /></td>
			        <td><input class="uk-button" type="reset" value="Reset" /></td>  
			    </tr>
			    <tr>
			    	<td colspan="2">
			    		<c:if test="${not empty param.error}">
						    <font color="red">Login error.<br /></font>
						    Reason:${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}  
						</c:if>
			    	</td>
			    </tr>
			</table>
		</form>
	</body>  
</html>