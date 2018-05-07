package com.raghav.Dbconn;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
	public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://www.db4free.net:3306/valueminds?autoReconnect=true&useSSL=false", "valueminds", "valueminds");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return con;
    }
	
}


