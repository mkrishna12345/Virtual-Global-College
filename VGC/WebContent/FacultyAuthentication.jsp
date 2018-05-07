<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.raghav.Dbconn.DbConnection"%>
<%@page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%

String email=request.getParameter("email");
String password=request.getParameter("password");
String str="Inactive";
String str1="active";
try{
	Connection conn=DbConnection.getConnection();
	String qry="select * from Faculty where email='"+email+"' and password='"+password+"'";
	Statement st=conn.createStatement();
	ResultSet rs=st.executeQuery(qry);
	if(rs.next())
	{
		String sql="select * from Faculty where email'"+email+"'and password='"+password+"' and status='active'";
		ResultSet rs1=st.executeQuery(sql);
		if(rs1.next())
		{
			response.sendRedirect("Admin.jsp");
			
		}
		else
		{
			response.sendRedirect("index.html");
		}
		
	}
	
}
catch(Exception e)
{
	e.printStackTrace();
	}





%>

</body>
</html>