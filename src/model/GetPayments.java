package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.PaymentDbConnection;

public class GetPayments extends PaymentDbConnection {
	
	

	
	private static final String SELECT_ALL_USERS = "select * from user_detail";

	public List<Payment> selectAllUsers() {

		List<Payment> payments = new ArrayList<>();
		//creating a Connection
		try (Connection connection = getConnection();

				//Create a statement
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
			System.out.println(preparedStatement);
			
			//Execute the query
			ResultSet rs = preparedStatement.executeQuery();

			// Process ResultSet object
			while (rs.next()) {try {
				int id = rs.getInt("id");
				String accountNumber=rs.getString("accountNumber");
				String name = rs.getString("name");
				String phoneNumber = rs.getString("phoneNumber");
				String cvc = rs.getString("cvc");
				String expDate = rs.getString("expDate");
				int amount = rs.getInt("amount");
				 payments.add(new Payment(id,accountNumber,name,phoneNumber,cvc,expDate,amount));
			}catch(Exception e) {
				System.out.println("get users error");
			}

			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return payments;
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
