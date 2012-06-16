package br.com.passei.teste;

import java.sql.Connection;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;

import br.com.passei.connection.ConnectionFactory;

public class TesteConnection {
	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		Connection con = new ConnectionFactory().getConnection();
		System.out.println("Conexão funcionando");
		String query = "insert into usuario (usuario,senha,nome,email) values (?,?,?,?)";
		PreparedStatement smtp = (PreparedStatement) con.prepareStatement(query);
		smtp.setString(1, "thales");
		smtp.setString(2, "Th4135");
		smtp.setString(3, "Thales Luiz");
		smtp.setString(4, "thales@4allcom.com");
		smtp.execute();
		con.close();
	}
}
