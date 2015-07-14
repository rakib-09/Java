import java.sql.*;

import javax.swing.*;

public class JDBC {
	
	Connection conn=null;
	public static Connection dbconnector()
	{
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
		JOptionPane.showMessageDialog(null,"succesful");
		return conn;	
	}
	
	catch(Exception e)
	{JOptionPane.showMessageDialog(null, e);
	return null;
	}

}
}
	