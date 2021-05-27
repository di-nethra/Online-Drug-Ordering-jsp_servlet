package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dao.PaymentDbConnection;

public class UpdatePayment extends PaymentDbConnection {

	
	private static final String UPDATE_USERS_SQL = "update user_detail set accountNumber=?,name=?, phoneNumber=?,cvc=?,expDate=?,amount=? where id=?;";

	public boolean updateUser(Payment user) throws SQLException {
		boolean rowUpdated;
		
		//creating a Connection
		try (Connection connection = getConnection();
				
				//Create a statement
				PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {
			statement.setString(1, user.getAccountNumber());
			statement.setString(2, user.getName());
			statement.setString(3, user.getPhoneNumber());
			statement.setString(4,user.getCvc());
			statement.setString(5,user.getExpDate());
			statement.setInt(6,user.getAmount());
			statement.setInt(7, user.getId());
			
			//Execute the update
			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

	

}
