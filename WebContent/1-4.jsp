<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
    
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
       <h1>JSP for loop</h1>
       
       <c:forEach var="city" items="${CityList}">
        <div style="color:tomato"> ${city } </div>
       </c:forEach>
</body>
</html>