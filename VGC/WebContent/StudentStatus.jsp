<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.raghav.Dbconn.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Global Virtual College</title>
</head>
<body>

<%

try{
	String Name=request.getParameter("Name");
	String str="Active";
	Connection conn=DbConnection.getConnection();
	Statement st=conn.createStatement();
	String qry="update Student set Status='"+str+"' where Name='"+Name+"'";
	st.executeUpdate(qry);
	conn.close();
	response.sendRedirect("StudentList.jsp");
}
catch( Exception e)
{
	out.println(e);
	}



%>




</body>
</html>