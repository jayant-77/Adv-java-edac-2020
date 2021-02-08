<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <% 
       List<String> list = Arrays.asList("Delhi","Mumbai","Chennai","Banglore");
        
        request.setAttribute("CityList",list);
        
        request.setAttribute("title","My Project");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	 <h1>Expression Tag:</h1>
	<div><%= request.getAttribute("title") %></div>
	
	<h1>Expression Language:</h1>
	<div> ${requestScope.title } </div>
</body>
</html>