package br.com.passei.connection;

import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	public java.sql.Connection getConnection() throws ClassNotFoundException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost/passei","root","123456");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
