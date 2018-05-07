package com.vgc.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.raghav.Dbconn.DbConnection;





public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		PrintWriter out = response.getWriter();
		
		String username = request.getParameter("email");
		String password = request.getParameter("password");
		
		System.out.println("username is "+username+ " password "+password);
		
		try {
			Connection conn = DbConnection.getConnection();
			System.out.println("connection is "+conn);
			PreparedStatement pt =  conn.prepareStatement("select * from `admin` where username=? and password=?");
			pt.setString(1, username);
			pt.setString(2, password);
			ResultSet rs = pt.executeQuery();
			
			if(rs.next())
			{
				System.out.println(rs.getString(1)+" "+rs.getString(2));
				
				out.println("success");
			}
			else{
				out.println("failed");
				System.out.println("bad credential");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 
	}

}
