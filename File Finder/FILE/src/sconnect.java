import java.awt.EventQueue;
import java.awt.Frame;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.JScrollPane;
import javax.swing.JTable;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.sql.Connection;
import java.awt.Font;

import net.proteanit.sql.DbUtils;

import java.sql.*;

import javax.swing.AbstractAction;
import javax.swing.Action;

import java.awt.Color;
import javax.swing.ScrollPaneConstants;
import javax.swing.border.SoftBevelBorder;
import javax.swing.border.BevelBorder;

public class sconnect extends JFrame {
	private JTextField textField;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					sconnect frame = new sconnect();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
	Connection con=null;
	JTable table;
	private JScrollPane scrollPane_1;
	static JTextField btn;
	
	private JButton btnOpen;
	private JPanel contentPane;

	/**
	 * Create the frame.
	 */
	
	public sconnect() {
		setTitle("SEARCH YOUR FILE !!");
		con=searchDB.search();
		this.setExtendedState(JFrame.MAXIMIZED_BOTH); 
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 1288, 744);
		contentPane = new JPanel();
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblEnterFileName = new JLabel("ENTER FILE NAME");
		lblEnterFileName.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblEnterFileName.setBounds(10, 11, 116, 17);
		contentPane.add(lblEnterFileName);
		
		textField = new JTextField();
		textField.setBounds(136, 8, 875, 28);
		contentPane.add(textField);
		textField.setColumns(10);
		
		JButton btnSearch = new JButton("SEARCH !");
		btnSearch.setBackground(Color.RED);
		btnSearch.setFont(new Font("Tahoma", Font.PLAIN, 15));
		btnSearch.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				try{
					
					String query="SELECT path FROM `search` WHERE path like ? ";
					java.sql.PreparedStatement st=con.prepareStatement(query);
					st.setString(1,"%"+ textField.getText() + "%" );
					ResultSet rs=st.executeQuery();
					table.setModel(DbUtils.resultSetToTableModel(rs));
					
					
				}
					
					
				catch(Exception ex)
				{
					JOptionPane.showMessageDialog(null,ex);
					//System.out.println(ex);
				}
							}
		});
		btnSearch.setBounds(1030, 5, 116, 28);
		contentPane.add(btnSearch);
		
		scrollPane_1 = new JScrollPane();
		scrollPane_1.setBounds(10, 48, 1247, 584);
		contentPane.add(scrollPane_1);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane_1.setViewportView(scrollPane);
		
		table = new JTable();
		scrollPane.setViewportView(table);
		
		btn = new JTextField();
		btn.setBounds(370, 657, 560, 25);
		contentPane.add(btn);
		btn.setColumns(10);
		
		btnOpen = new JButton("OPEN !!");
		btnOpen.setBackground(Color.RED);
		btnOpen.setFont(new Font("Tahoma", Font.PLAIN, 15));
		btnOpen.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
		         if(btn!=null)
		         {
				Test.main(null);
		         }
		         else{
		        	 System.out.println("error");
		         }
			}
		});
		btnOpen.setBounds(1168, 656, 89, 23);
		contentPane.add(btnOpen);
		
		JButton btnSelect = new JButton("SELECT");
		btnSelect.setBackground(Color.LIGHT_GRAY);
		btnSelect.setFont(new Font("Tahoma", Font.PLAIN, 15));
		btnSelect.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				int row = table.getSelectedRow();        
		         btn.setText(table.getModel().getValueAt(row, 0).toString());
				
			}
		});
		btnSelect.setBounds(1052, 655, 94, 25);
		contentPane.add(btnSelect);
		
		JButton btnRefresh = new JButton("REFRESH");
		btnRefresh.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				try
				{
					String q = "select * from search";
					java.sql.PreparedStatement pst=con.prepareStatement(q);
					ResultSet res=pst.executeQuery();
					table.setModel(DbUtils.resultSetToTableModel(res));
				}	
				catch(Exception ex)
				{JOptionPane.showMessageDialog(null, ex);}
				
			}
		});
		btnRefresh.setBackground(Color.GRAY);
		btnRefresh.setFont(new Font("Tahoma", Font.PLAIN, 15));
		btnRefresh.setBounds(1156, 5, 101, 29);
		contentPane.add(btnRefresh);
	}
}
