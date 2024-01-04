package com.LMS.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class Database {

	
	
	public static Connection getConnection() throws Exception {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/librarymanagementsystem","root","aniket");
		
		return connection;
		
	}
	
	
	
	
}
