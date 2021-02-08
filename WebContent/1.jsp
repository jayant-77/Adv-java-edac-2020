<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <% 
       List<String> list = Arrays.asList("Delhi","Mumbai","Chennai","Banglore");
        
        request.setAttribute("CityList",list);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>Helloooo Worlddd....!!!</div>

	<% for(String item : list)
	 {%>
	<div>
		<%= item %>
	</div>

	<% } %>
</body>
</html>