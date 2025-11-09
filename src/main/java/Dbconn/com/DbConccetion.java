package Dbconn.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConccetion {
	public static Connection giveConncetion() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/newbankdb","root","Siva@199221");
			return con;
		} catch (ClassNotFoundException | SQLException  e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		return null;
		}
	}
}
