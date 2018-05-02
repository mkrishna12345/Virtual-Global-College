package com.vgc.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcConnection {
	

	public static Connection DBConnection()
	{
		
		 Connection conn=null;
		 
		 try {
			 Class.forName("com.mysql.jdbc.Driver");
			 conn=DriverManager.getConnection("jdbc:mysql://www.db4free.net:3306/valueminds?autoReconnect=true&useSSL=false", "valueminds", "valueminds");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return conn;
		
	}

}
