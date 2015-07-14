import java.io.*;

import java.nio.file.*;
import java.sql.*;

import javax.swing.JOptionPane;
import javax.swing.filechooser.FileSystemView;
 public class  drivename  {
public static <staic> void main(String[] args)
        throws IOException {

    File[] paths;
    FileSystemView.getFileSystemView();
    paths = File.listRoots();
    for (File path : paths) {
        String str = path.toString();
        String slash = "\\";
        String s = new StringBuilder(str).append(slash).toString();
        Path startingDir = Paths.get(s);
       // System.out.println(startingDir);
        String st=startingDir.toString();
        try {//database connection
            
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/login","root","");
            String query ="INSERT INTO drive(drive) VALUES (?)";
            PreparedStatement pst=conn.prepareStatement(query);
            pst.setString(1,st);
            pst.executeUpdate();
            
            
            //myst.executeUpdate(query);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            JOptionPane.showMessageDialog(null, e);
        }
        
    }  
   
    }
}