package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CreateUser {
	
	
	private String jdbcURL = "jdbc:mysql://localhost:3306/online_payments?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "abc123";


	public Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
	
	private static final String INSERT_USERS_SQL = "INSERT INTO user_detail" + " (accountNumber,name,phoneNumber,district) VALUES "
			+ " (?,?,?,?);";
	

	
	public void insertUser(User user) throws SQLException {
		System.out.println(INSERT_USERS_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			
			preparedStatement.setString(1,user.getAccountNum());
			preparedStatement.setString(2,user.getName());
			preparedStatement.setString(3,user.getPhoneNumber());
			preparedStatement.setString(4,user.getDistrict());
			System.out.println("this is from create user:"+preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
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
