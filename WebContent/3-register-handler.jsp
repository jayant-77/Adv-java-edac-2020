<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	
String user = request.getParameter("Username");
String email = request.getParameter("Email");
String mob = request.getParameter("Mobile");
String pass = request.getParameter("password");

String DB_driver = "com.mysql.cj.jdbc.Driver";
String DB_url = "jdbc:mysql://localhost/dac";
String DB_user = "root";
String DB_pass = "jay5577";

Class.forName(DB_driver);

Connection con = DriverManager.getConnection(DB_url, DB_user, DB_pass);

String sql = "INSERT INTO user(UserName,email,mobile,password) values (?,?,?,?)";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, user);
ps.setString(2, email);
ps.setString(3, mob);
ps.setString(4, pass);

ps.executeUpdate();

con.close();
%>