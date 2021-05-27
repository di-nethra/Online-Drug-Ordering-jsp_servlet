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

		List<Payment> users = new ArrayList<>();
		//Establishing a Connection
		try (Connection connection = getConnection();

				//Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {try {
				int id = rs.getInt("id");
				String accountNumber=rs.getString("accountNumber");
				String name = rs.getString("name");
				String phoneNumber = rs.getString("phoneNumber");
				String cvc = rs.getString("cvc");
				String expDate = rs.getString("expDate");
				int amount = rs.getInt("amount");
				users.add(new Payment(id,accountNumber,name,phoneNumber,cvc,expDate,amount));
			}catch(Exception e) {
				System.out.println("get users error");
			}

			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return users;
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
