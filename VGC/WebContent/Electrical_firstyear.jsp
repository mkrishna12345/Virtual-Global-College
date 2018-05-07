<%@page import="com.raghav.Dbconn.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vgc college</title>
</head>
<body>

 <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="card">
                       
                        <div class="card-content">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>List of Subjects</th>
                                            
                                            <!-- <th>Delete</th> -->
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
    
    String s1="",s2="",s3="",s4="";
    int i=0;
    
Connection conn=DbConnection.getConnection();
    PreparedStatement ps=conn.prepareStatement("select FirstYear  FROM electrical_course");
    ResultSet rs=ps.executeQuery();
    while(rs.next())
    {
    s1=rs.getString(1);
    
    
    %>
    
    
    
    <tr>
    <td><%=s1 %></td>
   
  	<% }%>       
                                       
                                      
                                       
                                       
                                        
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    </div>
                    </div>
                    

</body>
</html>