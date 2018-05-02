<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection" %>
<%@page   import="com.raghav.Dbconn.DbConnection" %>
<%@ page import="java.sql.DriverManager" %>
<%@page import="java.sql.Statement" %>
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
<div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                           Student Details
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="#">Admin</a></li>
					  <li><a href="#">Student </a></li>
					  <li class="active">Data</li>
					</ol> 
					
				 <div id="page-inner"> 
               
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="card">
                       
                        <div class="card-content">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Student Name</th>
                                            <th>Address</th>
                                            <th>Year</th>
                                            <th> Status</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- <tr class="odd gradeX">
                                            <td>Trident</td>
                                            <td>Internet Explorer 4.0</td>
                                            <td>Win 95+</td>
                                            <td class="center">4</td>
                                            <td class="center">X</td>
                                        </tr>
                                        <tr class="even gradeC">
                                            <td>Trident</td>
                                            <td>Internet Explorer 5.0</td>
                                            <td>Win 95+</td>
                                            <td class="center">5</td>
                                            <td class="center">C</td>
                                        </tr>
                                        
                                        
                                        <tr class="even gradeC">
                                            <td>Trident</td>
                                            <td>Internet Explorer 7.0</td>
                                            <td>Win 95+</td>
                                            <td class="center">6</td>
                                            <td class="center">D</td>
                                        </tr>
                                        -->
                                       
                                       
    <%
    
    
   Connection con=DbConnection.getConnection();
  
    PreparedStatement ps=con.prepareStatement("select * from emp");
    ResultSet rs=ps.executeQuery();
    while(rs.next())
    {
    
    %>
    
    
    
    <tr>
    <td><%=rs.getInt("Id") %></td>
    <td><%=rs.getString("name") %></td>
    <td><%=rs.getString("salary") %></td>
    <td><%=rs.getString("designation") %></td>
    <td><a href="DeleteStudent?id=rs.getId()">Delete</a></td>
    
    
    
    
    </tr>
     <%} %>                                  
                                                                             
                                       
                                      
                                       
                                       
                                        
                                    </tbody>
                                </table>
                            </div>
                            <div class="row">
                              
                       <div class="col-sm-6"><div class="dataTables_paginate paging_simple_numbers" id="dataTables-example_paginate"><ul class="pagination"><li class="paginate_button previous disabled" aria-controls="dataTables-example" tabindex="0" id="dataTables-example_previous"><a href="#">Previous</a></li><li class="paginate_button active" aria-controls="dataTables-example" tabindex="0"><a href="#">1</a></li><li class="paginate_button " aria-controls="dataTables-example" tabindex="0"><a href="#">2</a></li><li class="paginate_button " aria-controls="dataTables-example" tabindex="0"><a href="#">3</a></li><li class="paginate_button " aria-controls="dataTables-example" tabindex="0"><a href="#">4</a></li><li class="paginate_button " aria-controls="dataTables-example" tabindex="0"><a href="#">5</a></li><li class="paginate_button " aria-controls="dataTables-example" tabindex="0"><a href="#">6</a></li><li class="paginate_button next" aria-controls="dataTables-example" tabindex="0" id="dataTables-example_next"><a href="#">Next</a></li></ul></div></div>
                              
                            
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