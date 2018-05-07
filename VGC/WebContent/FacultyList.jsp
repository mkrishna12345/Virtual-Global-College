<%@page import="com.raghav.Dbconn.DbConnection" %>
<%@ page import="java.sql.Connection" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>
<%@include file="Links.html" %>
<%@ include file="Sidebar.jsp" %>

        <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                           Faculty Details
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="#">Admin</a></li>
					  <li><a href="#">Faculty </a></li>
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
                                            <th>Faculty Name</th>
                                            <th>Address</th>
                                            <th>Subject</th>
                                            <th> Status</th>
                                            <!-- <th>Delete</th> -->
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
    
    String s1="",s2="",s3="",s4="";
    int i=0;
   Connection con=DbConnection.getConnection();
  
    PreparedStatement ps=con.prepareStatement("select * from Faculty");
    ResultSet rs=ps.executeQuery();
    while(rs.next())
    {
    s1=rs.getString(2);
    s2=rs.getString(5);
    s3=rs.getString(7);
    s4=rs.getString(9);
    
    %>
    
    
    
    <tr>
    <td><%=s1 %></td>
    <td><%=s2 %></td>
    <td><%=s3 %></td>
    
  	 <%	
			if(s4.equalsIgnoreCase("Inactive"))
			{
			
		%>
              <td><div>
                  <div align="center"><a href="FacultyStatus.jsp?Name=<%=s1%>"><%=s4%></a></div>
              </div></td>
              <%
		
			}else
			{
		%>
              <td ><div>
                  <div align="center"><%=s4%></div> </div></td>
               <!-- <td><a href='delete.jsp?id="+e.getid()"'>Delete</a></td> -->
               <!-- <td><a href='DeleteServlet?id="+e.getId()+"'>delete</a></td> -->
               
            </tr>
            <%
			  }
	  }
           
         
         
%>                                  
                                       
                                      
                                       
                                       
                                        
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>
            </div>
            
			   
			   
			         
					
					
					
					
					
					
					
					
					
					
									
		</div>
      </div>
      
      
    
         
         
         

</body>
</html>