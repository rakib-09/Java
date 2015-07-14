import java.sql.*;

import javax.swing.*;



public class driveDB {

	 Connection Conn=null;
	 public static Connection drive()
	 {
		 try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
			 JOptionPane.showMessageDialog(null, "successful");
			 return conn;
			 
			 
		 }
		 
		 catch(Exception e)
		 
		 {
			 JOptionPane.showMessageDialog(null, e);
			 return null;
			 
		 }
	 
	 }
}
 
	
	
