package com.tech.blog.helper;
import java.util.*;

import java.sql.*;

public class ConnectionProvider {
	private static Connection  con=null;
	
	public static Connection getConnection() {
		System.out.println("not connected");
		try {
			if(con==null){
				//driver class load
				
				Class.forName("org.sqlite.JDBC");
				
				
				//create a connection
				con=DriverManager.getConnection("jdbc:sqlite:C:/chitransh web/Java_programs2/TechBlog/techblog.db");
				System.out.println("connected");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}
}
