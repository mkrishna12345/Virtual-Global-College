package com.vgc.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcConnection {
	

public static Connection DBConnection() {
 
    String url = "jdbc:mysql://localhost/vgc";
    String username = "root";
    String password = "root";
    Connection conn = null;
    try{
      Class.forName("com.mysql.jdbc.Driver").newInstance();
      conn =DriverManager.getConnection(url,username,password);

      }catch (ClassNotFoundException e) {
        System.out.println(e.getMessage());
    } catch (SQLException e) {
        System.out.println(e.getMessage());
    } catch (InstantiationException e) {
        e.printStackTrace();
    } catch (IllegalAccessException e) {
        e.printStackTrace();
    }

    return conn;

}

}
