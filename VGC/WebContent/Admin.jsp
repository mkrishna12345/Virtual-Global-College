<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.raghav.Dbconn.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Global Virtual College</title>

</head>
<body>
<%@ include file="Links.html" %>
<%@ include file="Sidebar.jsp" %>
<%
Connection conn=DbConnection.getConnection();
PreparedStatement ps=conn.prepareStatement("select count(*) from Faculty");
PreparedStatement ps1=conn.prepareStatement("select count(*) from Student");
ResultSet rs=ps.executeQuery();
rs.next();
ResultSet rs1=ps1.executeQuery();
rs1.next();



%>


         
   <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Dashboard
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="#">Admin</a></li>
					  <li><a href="#">Dashboard</a></li>
					  <li class="active">Data</li>
					</ol> 
									
		</div>
            <div id="page-inner">

			<div class="dashboard-cards"> 
                <div class="row">
                    <div class="col-xs-12 col-lg-7 col-md-5">
					
						<div class="card horizontal cardIcon waves-effect waves-dark">
						<div class="card-image green">
						<i class="material-icons dp48">supervisor_account</i>
						</div>
						<div class="card-stacked green">
						<div class="card-content">
						<h3><%=rs.getString(1) %></h3> 
						</div>
						<div class="card-action">
						<strong> No.of Faculty </strong>
						</div>
						</div>
						</div>
	 
                    </div>
                    <div class="col-xs-12 col-lg-7 col-md-5">
					
					<div class="card horizontal cardIcon waves-effect waves-dark">
						<div class="card-image green">
						<i class="material-icons dp48">supervisor_account</i>
						</div>
						<div class="card-stacked green">
						<div class="card-content">
						<h3 ><%=rs1.getString(1) %></h3> 
						</div>
						<div class="card-action">
						<strong >No.of Students</strong>
						</div>
						</div>
						</div> 
						 
                    </div>
                </div>
			   </div>
			   </div>
			   </div>
			   </div>
			    
         
   



</body>
</html>