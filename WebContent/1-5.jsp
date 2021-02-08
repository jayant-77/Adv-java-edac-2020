<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
       List<String> list = Arrays.asList("Mumbai","Chennai","Banglore","Pune","Delhi");
          request.setAttribute("cityList",list);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>JSP for loop</h1>

	<c:forEach var="city" items="${cityList }" varStatus="myIndex">

		<c:if test="${myIndex.index % 2 == 0 }">
			<div style="color: tomato">${city }</div>
		</c:if>

		<c:if test="${myIndex.index % 2 != 0 }">
			<div style="color: blue">${city }</div>
		</c:if>

	</c:forEach>
</body>
</html>