package com.vgc.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.raghav.Dbconn.DbConnection;


public class StudentLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public StudentLogin() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	PrintWriter out=response.getWriter();
	String username=request.getParameter("email");
	String password=request.getParameter("password");
	System.out.println("email is:"+username+"password is"+password);
	try {
		
		Connection conn=DbConnection.getConnection();
		PreparedStatement ps=conn.prepareStatement("select * from 'Student' where email=? and password=?");
		ps.setString(1, username);
		ps.setString(2, password);
		ResultSet rs=ps.executeQuery();
		
		if(rs.next())
		{
			System.out.println(rs.getString(1)+"  "+rs.getString(2));
			out.println("success");
			
		}
		else {
			out.print("failed");
			System.out.println("wrong details...!");
		}
		
		
		
	} catch (Exception e) {
		e.printStackTrace();
		
	}
	
	
	
	
	
	
	
	
	}

}
