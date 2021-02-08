<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Register Form</h1>

	<c:if test="${operation == 1 }">
		<div style="color: Green">Register Successfull...!!!</div>
	</c:if>
	</br>

	<form action="4-register-handler2.jsp" method="post">
		<div>
			<input type="text" name="Username" placeholder="UserName..." />
		</div>
		<div>
			<input type="text" name="Email" placeholder="Someone@gmail.com" />
		</div>
		<div>
			<input type="text" name="Mobile" placeholder="Enter ur no" />
		</div>
		<div>
			<input type="password" name="password" placeholder="Enter password" />
		</div>
		<div>
			<input type="submit" value="Register" />
		</div>
	</form>
</body>
</html>