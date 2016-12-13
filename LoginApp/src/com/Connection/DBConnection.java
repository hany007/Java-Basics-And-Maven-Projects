package com.Connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DBConnection {
	
	 static String userName="h2";
	 static String password="";
	 static String url="jdbc:h2:tcp://localhost/~/test";
     static String driver= "org.h2.Driver";	

	 static Connection connection=null;
	public DBConnection()
	{
	}
	
	public static Connection getDBConnection() throws ClassNotFoundException , SQLException {
	try{
		System.out.println(" in ");
		Class.forName(driver);
		System.out.println(" out");
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	connection=DriverManager.getConnection(url,userName, password);
	System.out.println(connection);
	return connection;
	}
	public static void main(String[] args)throws ClassNotFoundException,SQLException {
		if(getDBConnection()==null){
			System.out.println("could not established the connection");
		}
			else
			{
			System.out.println("connection successfully established");	
			}
	}
}
	
 


