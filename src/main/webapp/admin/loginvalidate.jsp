<%@page import="java.sql.*"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
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

String username = request.getParameter("username");
String password = request.getParameter("password");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","charan");

PreparedStatement ps = con.prepareStatement("select count(*) from admin_table where username=? and password=?");
ps.setString(1,username);
ps.setString(2,password);

ResultSet rs = ps.executeQuery();
int f=0;
while(rs.next() && rs.getInt(1)>0)
{
	f=1;
}

if(f==1)
{
	response.sendRedirect("adminhomepage.jsp");
}
else
{
	request.setAttribute("erroradmin","Invalid UserName or Password");
	RequestDispatcher rd=request.getRequestDispatcher("adminlogin.jsp");
	rd.include(request,response);
}

%>
</body>
</html>