import java.awt.BorderLayout;
import java.sql.*;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;

import java.awt.Font;

import javax.swing.JOptionPane;
import javax.swing.SwingConstants;
import javax.swing.JRadioButton;
import javax.swing.JButton;
import javax.swing.JTextField;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.swing.JComboBox;
import javax.swing.DefaultComboBoxModel;

public class Registration1 extends JFrame {

	private JPanel contentPane;
	private JTextField firstname;
	private JTextField lastname;
	private JTextField surname;
	private JTextField username;
	private JTextField password;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Registration1 frame = new Registration1();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
	Connection connection;
	JDBC conn=new JDBC();
	/**
	 * Create the frame.
	 */
	
	PreparedStatement pst=null;
	private JTextField age;
	private JTextField gender;
	public Registration1() {
		connection=JDBC.dbconnector();
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 407, 364);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblFirstName = new JLabel("FIRST NAME");
		lblFirstName.setFont(new Font("Tahoma", Font.BOLD, 15));
		lblFirstName.setBounds(59, 11, 94, 33);
		contentPane.add(lblFirstName);
		
		JLabel lblLastName = new JLabel("LAST NAME");
		lblLastName.setHorizontalAlignment(SwingConstants.RIGHT);
		lblLastName.setFont(new Font("Tahoma", Font.BOLD, 15));
		lblLastName.setBounds(59, 48, 94, 28);
		contentPane.add(lblLastName);
		
		JLabel lblSurname = new JLabel("SURNAME");
		lblSurname.setHorizontalAlignment(SwingConstants.LEFT);
		lblSurname.setFont(new Font("Tahoma", Font.BOLD, 15));
		lblSurname.setBounds(77, 75, 76, 39);
		contentPane.add(lblSurname);
		
		JLabel lblUserName = new JLabel("USER NAME");
		lblUserName.setHorizontalAlignment(SwingConstants.RIGHT);
		lblUserName.setFont(new Font("Tahoma", Font.BOLD, 15));
		lblUserName.setBounds(59, 196, 94, 28);
		contentPane.add(lblUserName);
		
		JLabel lblPassword = new JLabel("PASSWORD");
		lblPassword.setHorizontalAlignment(SwingConstants.RIGHT);
		lblPassword.setFont(new Font("Tahoma", Font.BOLD, 15));
		lblPassword.setBounds(59, 238, 94, 28);
		contentPane.add(lblPassword);
		
		firstname = new JTextField();
		firstname.setBounds(170, 19, 144, 20);
		contentPane.add(firstname);
		firstname.setColumns(10);
		
		lastname = new JTextField();
		lastname.setBounds(170, 54, 144, 20);
		contentPane.add(lastname);
		lastname.setColumns(10);
		
		surname = new JTextField();
		surname.setBounds(170, 86, 144, 20);
		contentPane.add(surname);
		surname.setColumns(10);
		
		username = new JTextField();
		username.setBounds(170, 202, 144, 20);
		contentPane.add(username);
		username.setColumns(10);
		
		password = new JTextField();
		password.setBounds(170, 244, 144, 20);
		contentPane.add(password);
		password.setColumns(10);
		
		JButton btnConfirm = new JButton("CONFIRM >>");
		btnConfirm.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent args0) {
				try{
					
					String Query="INSERT INTO registration (FirstName,LastName,SurName,age,gender,UserName,Password) VALUES (?,?,?,?,?,?,?)";
					PreparedStatement pst=connection.prepareStatement(Query);
					pst.setString(1,firstname.getText() );
					pst.setString(2,lastname.getText() );
					pst.setString(3,surname.getText() );
					pst.setString(4,age.getText() );
					pst.setString(5, gender.getText());
					pst.setString(6,username.getText() );
					pst.setString(7,password.getText() );
					pst.execute();
					JOptionPane.showMessageDialog(null, "you are registered");
					//if(!firstname.getText().equals("") && !lastname.getText().equals("") && !surname.getText().equals("")
					//&& ! age.getText().equals("") && !username.getText().equals("") && !password.getText().equals("")){
			         //   theQuery("insert into registration (FirstName,LastName,SurName,age,gender,UserName,Password)values("+firstname.getText()+",'"+lastname.getText()+"',"+surname.getText()+"',"+age.getText()+",'"+gender.getSelectedItem()+"'"+")");
			     //   }
			        //else{
			          //  jLabelMessage.setText("You must need to fill ID, Name & Age fields!!");
			        }
					
				
				catch(Exception exc)
				{
					exc.printStackTrace();
					
				}
				
				
			}
		});
		btnConfirm.setBounds(272, 291, 109, 23);
		contentPane.add(btnConfirm);
		
		JLabel lblAge = new JLabel("AGE");
		lblAge.setHorizontalAlignment(SwingConstants.RIGHT);
		lblAge.setFont(new Font("Tahoma", Font.BOLD, 15));
		lblAge.setBounds(106, 111, 47, 28);
		contentPane.add(lblAge);
		
		JLabel lblGender = new JLabel("GENDER");
		lblGender.setHorizontalAlignment(SwingConstants.RIGHT);
		lblGender.setFont(new Font("Tahoma", Font.BOLD, 15));
		lblGender.setBounds(77, 157, 76, 28);
		contentPane.add(lblGender);
		
		age = new JTextField();
		age.setBounds(170, 117, 144, 20);
		contentPane.add(age);
		age.setColumns(10);
		
		gender = new JTextField();
		gender.setBounds(170, 163, 144, 20);
		contentPane.add(gender);
		gender.setColumns(10);
		
		
	}
}
