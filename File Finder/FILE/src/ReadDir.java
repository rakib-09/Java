

import java.sql.*;

import javax.swing.*;

import java.io.*;
import java.nio.file.*;
import java.nio.file.attribute.*;

import static java.nio.file.FileVisitResult.*;


 public class  ReadDir  {

static Connection con=null;
public ReadDir()
{con = searchDB.search();
    
}
public static class Finder
extends SimpleFileVisitor<Path> {

private final PathMatcher matcher;
Finder(String pattern) {
matcher = FileSystems.getDefault().getPathMatcher("glob:" + pattern);
}
public void find(Path file) {
    
    Path name = file.getFileName();
    String st = file.toString();
   if (name != null && matcher.matches(name)) {
        try {
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/login","root","");
            conn.createStatement();
            String query =" INSERT INTO `search`(`path`) VALUES (?)";
            PreparedStatement pst=conn.prepareStatement(query);
            pst.setString(1,st );
            pst.execute();
            pst.close();
            conn.close();
            
            //myst.executeUpdate(query);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            JOptionPane.showMessageDialog(null, e);
        }
        //System.out.println(st);
       
       
        
        
    }
}








    @Override
    public FileVisitResult visitFile(Path file,
            BasicFileAttributes attrs) {
        find(file);
        return CONTINUE;
    }

 
    @Override
    public FileVisitResult preVisitDirectory(Path dir,
            BasicFileAttributes attrs) {
        find(dir);
        return CONTINUE;
    }

    @Override
    public FileVisitResult visitFileFailed(Path file,
            IOException exc) {
        return CONTINUE;
    }
}

        public void main(String[] args)throws IOException {
        JOptionPane.showMessageDialog(null, "IT MAY TAKE SOMETIME TO LOAD \n PLEASE WAIT FOR CLOSING POPUP!!");
        //rd.find();
    
       String s=(String)search.comboBoxN.getSelectedItem();
        //String s="D:\\";
        Path startingDir = Paths.get(s);
        
        String pattern =(String)search.textFieldN.getText();
        //String pattern="*.doc";
        Finder finder = new Finder(pattern);
        Files.walkFileTree(startingDir, finder);
      //  finder.find();
        JOptionPane.showMessageDialog(null,"close\n NOW PLEASE CLICK\nSEARCH MY FILE! BUTTON");
 
   
}

}