package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import dao.PaymentDbConnection;

public class DeletePayment extends PaymentDbConnection {


	private static final String DELETE_USERS_SQL = "delete from user_detail where id = ?;";
	
	public boolean deleteUser(int id) throws SQLException {
		boolean rowDeleted;
		//creating a Connection
		try (Connection connection = getConnection();
				//Create a statement
				PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);) {
			statement.setInt(1, id);
			
			//Execute the update
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

}
