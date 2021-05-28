package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dao.PaymentDbConnection;

public class SelectPayment extends PaymentDbConnection {


	private static final String SELECT_USER_BY_ID = "select id,accountNumber,name,phoneNumber,cvc,expDate,amount from user_detail where id =?";
	
	public Payment selectUser(int id) {
		Payment payment = null;
		//creating a Connection
		try (Connection connection = getConnection();
				//Create a statement
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			//Execute the query
			ResultSet rs = preparedStatement.executeQuery();

			//Process ResultSet object
			
			while (rs.next()) {
				
				String accountNumber = rs.getString("accountNumber");
				String name = rs.getString("name");
				String phoneNumber = rs.getString("phoneNumber");
				String cvc = rs.getString("cvc");
				String expDate = rs.getString("expDate");
				int amount = rs.getInt("amount");
				payment = new Payment(id,accountNumber,name,phoneNumber,cvc,expDate,amount);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return payment;
	}
	
	
	
	
	
	
	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

	
	
}
