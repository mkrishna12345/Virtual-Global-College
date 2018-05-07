<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.raghav.Dbconn.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="Links.html" %>
<%@ include file="Sidebar.jsp" %>

        <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                           Course Details
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="#">Admin</a></li>
					  <li><a href="#">Course </a></li>
					  <li class="active">Data</li>
					</ol> 
					
					 <div id="page-inner"> 
               
            <div class="row">
                <div class="col-md-12" >
                    <!-- Advanced Tables -->
                    <div class="card">
                       
                        <div class="card-content">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Electrical </th>
                                            <th>Electronics</th>
                                             <th>Computers</th>
                                             
                                            
                                            <!-- <th>Delete</th> -->
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                    
                                    <tr >
                                            <td ><a class="electricalfirstyear" href="#">First Year</a></td>
                                            <td id="electricalsecondyear"><a href="electronics_firstyear">First Year</a></td>
                                            <td id=" elctricalthirdyear"><a href="computers_firstyear"> First Year</a></td>
                                        </tr>
                                        
                                    <tr class="second year">
                                            <td id="eletronicsfirstyear"><a href="electrical_secondyear">Second Year</a></td>
                                            <td id="electronicssecondyear"><a href="electronics_secondyear">Second Year</a></td>
                                            <td id=" electronicsthirdyear"><a href="computers_secondyear"> Second Year</a></td>
                                        </tr>
                                         <tr class="Third year">
                                            <td ><a  id="computersfirstyear" href="electrical_secondyear">Third Year</a></td>
                                            <td id="computerssecondyear"><a href="electronics_secondyear">Third Year</a></td>
                                            <td id=" computersthirdyear"><a href="computers_thirdyear"> Third Year</a></td>
                                        </tr>
                                  
                                    </tbody>
                                </table>
                                
                              
                            </div>
                            
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                      <h1 class="page-header">
                           Subjects  List:-
                       
                        </h1>
                         <div id="page-inner"> 
               
            <div class="row">
                <div class="col-md-12" >
                    <!-- Advanced Tables -->
                    <div class="card">
                       
                        <div class="card-content">
                            <div class="table-responsive">
                            	<div class="table-content">
                            	
                            	
                            	
                            	
                            	</div>
                            </div>
                        </div>
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