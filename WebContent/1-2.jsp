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
	<h1>CITY LIST:</h1>

	<% for(int i=0;i<list.size();i++) {
	      String str = list.get(i);
	 %>

	<% if(i % 2 == 0) 
	 {%>

	<div style="color: tomato"> <%= str %>	</div>
		
	<%} else {%>
	
	<div style="color: blue"> <%= str %> </div>
		

	<% } %>
	<% } %>
</body>
</html>