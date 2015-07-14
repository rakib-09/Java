	  
	import java.awt.Desktop;  
import java.io.File;  
	  
	public class Test {  
	  
	public static void main(String[] args) {  
	  // TODO Auto-generated method stub  
	   try {  
		   String a=(String)sconnect.btn.getText();
		   String s=a.replaceAll("'\'", "/");
	    File file = new File(s);  
	    if (file.exists()) {  
	     
	     if (Desktop.isDesktopSupported()) {  
	      Desktop.getDesktop().open(file);  
	     } else {  
	      System.out.println("Awt Desktop is not supported!");  
	     }  
	     
	    } else {  
	     System.out.println("File is not exists!");  
	    }  
	     
	    System.out.println("Done");  
	     
	     } catch (Exception ex) {  
	    ex.printStackTrace();  
	     }  
	 }  
	  
	} 

