import java.awt.EventQueue;
import java.awt.Window;

import javax.swing.JFrame;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextPane;
import javax.swing.JToggleButton;
import javax.swing.JButton;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.Font;

import javax.swing.JTextField;
import javax.swing.JPasswordField;
import javax.swing.JEditorPane;

import java.awt.Window.Type;
import java.sql.*;

public class login {

	private JFrame frmLogin;
	static JTextField textField;
	static JPasswordField passwordField;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					login window = new login();
					window.frmLogin.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
	Connection connection=null;
	JDBC database=new JDBC();
	/**
	 * Create the application.
	 */
	public login() {
		initialize();
		connection=JDBC.dbconnector();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frmLogin = new JFrame();
		frmLogin.setType(Type.POPUP);
		frmLogin.setTitle("LOGIN");
		frmLogin.setBounds(100, 100, 396, 326);
		frmLogin.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frmLogin.getContentPane().setLayout(null);
		
		JButton btnMessage = new JButton("SEARCH");
		btnMessage.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				 {	String Query="select * from registration where UserName=? and Password=?";
					try{
						
						PreparedStatement pst=connection.prepareStatement(Query);
						pst.setString(1,login.textField.getText() );
						pst.setString(2,login.passwordField.getText() );
						
						ResultSet rs = pst.executeQuery();
						
			
						if(rs.next())
						{
							JOptionPane.showMessageDialog(null,"Correct");
							search search= new search();
							search.setVisible(true);
							frmLogin.dispose();
							login login = new login();
							login.setVisible(false);
							
							
						}
						else
						{
							JOptionPane.showMessageDialog(null,"Wrong password or username!!\n try again !! ");
						}
						rs.close();
						pst.close();
					}
					catch(Exception e)
					{
						JOptionPane.showMessageDialog(null, e);
						
					} 
				 
			 }
			
				
			
			}
		});
		btnMessage.setBounds(230, 201, 98, 35);
		frmLogin.getContentPane().add(btnMessage);
		
		JButton btnNewButton = new JButton("REGISTER");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//add new jframe;
				Registration1 reg1= new Registration1();
				reg1.setVisible(true);
			}
			}
		
				);
		btnNewButton.setBounds(52, 201, 98, 35);
		frmLogin.getContentPane().add(btnNewButton);
		
		JLabel lblLogin_1 = new JLabel("LOGIN");
		lblLogin_1.setFont(new Font("Tahoma", Font.BOLD, 17));
		lblLogin_1.setBounds(52, 78, 72, 37);
		frmLogin.getContentPane().add(lblLogin_1);
		
		JLabel lblPassword = new JLabel("PASSWORD");
		lblPassword.setFont(new Font("Tahoma", Font.BOLD, 17));
		lblPassword.setBounds(15, 120, 109, 35);
		frmLogin.getContentPane().add(lblPassword);
		
		textField = new JTextField();
		textField.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
			}
		});
		textField.setFont(new Font("Tahoma", Font.PLAIN, 14));
		textField.setBounds(147, 86, 129, 26);
		frmLogin.getContentPane().add(textField);
		textField.setColumns(10);
		
		passwordField = new JPasswordField();
		passwordField.setEchoChar('*');
		passwordField.setBounds(147, 128, 129, 25);
		frmLogin.getContentPane().add(passwordField);
	}

	protected void setVisible(boolean b) {
		// TODO Auto-generated method stub
		
	}
}
