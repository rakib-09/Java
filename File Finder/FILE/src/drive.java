import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JComboBox;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.JTable;

import java.sql.*;

public class drive extends JFrame {

	private JPanel contentPane;
	private JTextField textField;
	private JTable table;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					drive frame = new drive();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	Connection connection;
	driveDB db=new driveDB();
	public drive() {
		connection=driveDB.drive();
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		textField = new JTextField();
		textField.setBounds(96, 11, 86, 20);
		contentPane.add(textField);
		textField.setColumns(10);
		
		JButton btnDrive = new JButton("drive");
		btnDrive.setBounds(233, 10, 89, 23);
		contentPane.add(btnDrive);
		
		table = new JTable();
		table.setBounds(10, 54, 414, 196);
		contentPane.add(table);
	}
}
