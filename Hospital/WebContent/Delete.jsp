<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Statement statement = null;
ResultSet resultSet = null;
%>

<%
try{
	 Connection con=null;
     Class.forName("com.mysql.jdbc.Driver");
		System.out.println("Class execute");
		con=DriverManager.getConnection("jdbc:mySql://localhost:3306/hospital","root","");
		
statement=con.createStatement();
String id1=request.getParameter("id");
java.sql.PreparedStatement ps=con.prepareStatement("delete from arogya where id=?");
ps.setString(1,id1);
int i=ps.executeUpdate();
if(i==1)
{
response.sendRedirect("ViewArogya.jsp");
}
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>


</body>
</html>