<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<%
	String username = (String)request.getAttribute("username");
%>
<h1 style="text-align: center;">Welcome <%= username %></h1>
<br>
<h2 style="text-align: center;">Select any survey you wish to fill</h2>
<div class="container">
<div class="card-header my-3">Available Surveys</div>
<div class="row">	
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","charan");
	System.out.println("db connected");
	PreparedStatement ps = con.prepareStatement("select * from form_surveys");
	ResultSet rs = ps.executeQuery();
		
	while(rs.next())
	{%>
		<% System.out.println(rs.getString(1));	 %>
					<div class="col-md-3 my-3">
					<div class="card w-100" style="width: 18rem;">
						  <img src="survey_fill.png" class="card-img-top" alt="no img">
						  <div class="card-body">
						    <h5 class="card-title"><%= rs.getString(1) %></h5>
						    <a class="btn btn-primary">Fill Now</a>
						  </div>
						</div>
					
					
					
		</div>
		
	
	<%
	}

%>
</div>
</div>	
</body>
</html>