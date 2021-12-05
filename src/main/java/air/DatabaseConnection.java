package air;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DatabaseConnection {


		private String dbUrl ="jdbc:mysql://localhost:3306/clothbooking";
		private String dbUser ="root";
		private String dbPwd ="";
		private String dbDriver = "com.mysql.cj.jdbc.Driver";
		
		
		
	public void loaddriver(String dbDriver) {
			
			try {
			Class.forName(dbDriver);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				
		}

	public Connection getConnection() { 
		Connection con = null;

	try {
		con = DriverManager.getConnection(dbUrl, dbUser, dbPwd);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return con;
	}

	public String insert(Managerclass manager) {
		
		loaddriver(dbDriver);
		Connection con = getConnection();
		
		String query = "INSERT INTO managers VALUES(?,?,?,?,?)";
		
		String message ="Record registed successfully";
		
		try {
			PreparedStatement ps = con.prepareStatement(query);
			//ps.setString(1, null);
			ps.setString(1, null);
			ps.setString(2, manager.getManager_names());
			ps.setString(3, manager.getManager_email());
			ps.setString(4, manager.getManager_username());
			ps.setString(5, manager.getManager_password());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			message ="record not registered" +e;
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	return message;
		
	}
	
	public String insert(Customerclass custo) {
		
		loaddriver(dbDriver);
		Connection con = getConnection();
		
		String query = "INSERT INTO customers VALUES(?,?,?,?,?,?,?,?)";
		
		String message ="Record registed successfully";
		
		try {
			PreparedStatement ps = con.prepareStatement(query);
			//ps.setString(1, null);
			ps.setString(1, null);
			ps.setString(2, custo.getCustomer_names());
			ps.setString(3, custo.getCustomer_email());
			ps.setString(4, custo.getCustomer_phone());
			ps.setString(5, custo.getCustomer_address());
			ps.setString(6, custo.getCustomer_username());
			ps.setString(7, custo.getCustomer_password());
			ps.setString(8, custo.getCustomer_gender());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			message ="record not registered" +e;
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	return message;
		
	}
	public String insert(BookingClass book) {
		
		loaddriver(dbDriver);
		Connection con = getConnection();
		
		String query = "INSERT INTO booking(booking_id,clothes_id,customer_id,booked_date) VALUES(?,?,?,?)";
		
		String message ="Record registed successfully";
		
		try {
			PreparedStatement ps = con.prepareStatement(query);
			//ps.setString(1, null);
			ps.setString(1, null);
			ps.setInt(2, book.getClothes_id());
			ps.setInt(3, book.getCustomer_id());
			ps.setString(4, book.getBooked_date());
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			message ="record not registered" +e;
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	return message;
		
	}


	public boolean CheckCredentials(String manager_username,String manager_password) {
		loaddriver(dbDriver);
		Connection con=getConnection();
		PreparedStatement ps=null;
		String query= "SELECT * FROM managers WHERE manager_username= ? AND manager_password= ? ";

		
		try {
		ps=con.prepareStatement(query);

		ps.setString(1, manager_username);
		ps.setString(2, manager_password);
		
		
		ResultSet rs=ps.executeQuery();

		if(rs.next()) {
		return  true;
		}
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}

		return false;

	}
	
	public boolean CheckCredentialsustomer(String customer_username,String customer_password) {
		loaddriver(dbDriver);
		Connection con=getConnection();
		PreparedStatement ps=null;
		String query= "SELECT * FROM customers WHERE customer_username= ? AND customer_password= ? ";

		
		try {
		ps=con.prepareStatement(query);

		ps.setString(1, customer_username);
		ps.setString(2, customer_password);
		
		
		ResultSet rs=ps.executeQuery();

		if(rs.next()) {
		return  true;
		}
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}

		return false;

	}
	public int checkCustomerId(String customer_username,String customer_password) {
		loaddriver(dbDriver);
		Connection con=getConnection();
		PreparedStatement ps=null;
		int userId;
		String query= "SELECT * FROM customers WHERE customer_username= ? AND customer_password= ? ";

		
		try {
		ps=con.prepareStatement(query);

		ps.setString(1, customer_username);
		ps.setString(2, customer_password);
		
		
		ResultSet rs=ps.executeQuery();

		if(rs.next()) {
			userId=rs.getInt("customer_id");
		return  userId;
		}
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}

		return 0;

	}

}


	