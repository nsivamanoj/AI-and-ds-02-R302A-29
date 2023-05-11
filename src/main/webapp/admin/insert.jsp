<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String ques = request.getParameter("question");
	String opt1 = request.getParameter("option1");
	String opt2 = request.getParameter("option2");
	String opt3 = request.getParameter("option3");
	String opt4 = request.getParameter("option4");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","charan");

	PreparedStatement ps = con.prepareStatement("insert into surveys values(?,?,?,?)");
	ps.setString(1,ques);
	ps.setString(2,opt1);
	ps.setString(3,opt2);
	ps.setString(4,opt3);
	ps.setString(5,opt4);
	ResultSet rs = ps.executeQuery();

%>
<p style="text-align:center;">Question Inserted Successfully</p>
</body>
</html>