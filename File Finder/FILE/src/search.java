import java.sql.*;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;

import java.awt.Font;

import javax.swing.JOptionPane;
import javax.swing.SwingConstants;
import javax.swing.JButton;
import javax.swing.JComboBox;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.Color;

import javax.swing.event.AncestorListener;
import javax.swing.event.AncestorEvent;

import net.proteanit.sql.DbUtils;

import javax.swing.JTextField;


public class search extends JFrame {

	private JPanel contentPane;
	static JComboBox<String> comboBoxN ;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					search frame = new search();
					frame.setVisible(true);
					
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
	static Connection connection=null;
	static JTextField textFieldN;
	/**
	 * Create the frame.
	 */
	
	public void fcbox()
	{	
		try{String qu="delete from drive";
		   PreparedStatement ps=connection.prepareStatement(qu);
		   ps.executeUpdate();
			drivename.main(null);
			String q="select * from drive";
			PreparedStatement pst=connection.prepareStatement(q);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
			comboBoxN.addItem(rs.getString("drive")); 
			}
			}
		catch(Exception e)
		{JOptionPane.showMessageDialog(null, e);}
	}
	
	public search() {
		setTitle("SEARCH OPTION");
		
		connection=searchDB.search();
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 382, 319);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblDriveName = new JLabel("DRIVE NAME");
		lblDriveName.addAncestorListener(new AncestorListener() {
			public void ancestorAdded(AncestorEvent arg0) {
			}
			public void ancestorMoved(AncestorEvent arg0) {
			}
			public void ancestorRemoved(AncestorEvent arg0) {
			}
		});
		lblDriveName.setHorizontalAlignment(SwingConstants.RIGHT);
		lblDriveName.setFont(new Font("Tahoma", Font.BOLD, 15));
		lblDriveName.setBounds(39, 11, 96, 14);
		contentPane.add(lblDriveName);
		
		JButton btnSearchMyFile = new JButton("SEARCH MY FILE !");
		btnSearchMyFile.setBackground(Color.RED);
		btnSearchMyFile.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				
				sconnect sc=new sconnect();
				sc.setVisible(true);
				setVisible(false);
				try{
					String query="select * from search";
					PreparedStatement st=connection.prepareStatement(query);
					ResultSet rs=st.executeQuery();
					sc.table.setModel(DbUtils.resultSetToTableModel(rs));
				}
				catch(Exception ex){
					JOptionPane.showMessageDialog(null,ex);
					
				}
				
			}
		});
		btnSearchMyFile.setFont(new Font("Tahoma", Font.BOLD, 11));
		btnSearchMyFile.setBounds(94, 246, 153, 23);
		contentPane.add(btnSearchMyFile);
		
		 comboBoxN = new JComboBox<String>();
		comboBoxN.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
			}
		});
		comboBoxN.setBounds(161, 10, 70, 20);
		contentPane.add(comboBoxN);
		
		JButton btnScanMyPc = new JButton("SCAN MY DRIVE");
		btnScanMyPc.setFont(new Font("Tahoma", Font.BOLD, 15));
		btnScanMyPc.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
			
				try{
					String qu="DELETE FROM `search` WHERE 1=1";
					PreparedStatement st=connection.prepareStatement(qu);
					st.executeUpdate();
					ReadDir rd=new ReadDir();
					rd.main(null);
				}
				catch(Exception e)
				{JOptionPane.showMessageDialog(null, e);}
				
			
			}
		});
		btnScanMyPc.setBounds(94, 153, 166, 23);
		contentPane.add(btnScanMyPc);
		
		JLabel lblExtensionName = new JLabel("Extension Name");
		lblExtensionName.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblExtensionName.setBounds(39, 53, 112, 26);
		contentPane.add(lblExtensionName);
		
		textFieldN = new JTextField("*.");
		
		textFieldN.setBounds(161, 56, 70, 20);
		contentPane.add(textFieldN);
		textFieldN.setColumns(10);
		
		JLabel lblClickScanMy = new JLabel("click SCAN MY DRIVE for scanning");
		lblClickScanMy.setFont(new Font("Tahoma", Font.BOLD, 12));
		lblClickScanMy.setBounds(78, 115, 217, 14);
		contentPane.add(lblClickScanMy);
		
		JLabel lblClickSearchMy = new JLabel("click SEARCH MY FILE! for find your file");
		lblClickSearchMy.setFont(new Font("Tahoma", Font.BOLD, 11));
		lblClickSearchMy.setBounds(65, 221, 222, 14);
		contentPane.add(lblClickSearchMy);
		fcbox();
		
	}
}
