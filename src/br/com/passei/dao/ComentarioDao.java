package br.com.passei.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;

import br.com.passei.connection.ConnectionFactory;
import br.com.passei.main.Comentario;

public class ComentarioDao {
	public ArrayList<Comentario> getComentariosModeradosPorPostagem(
			int idpostagem) throws SQLException, ClassNotFoundException {
		ArrayList<Comentario> comentarios = new ArrayList<Comentario>();
		try {
			Connection con = new ConnectionFactory().getConnection();
			String query = "select * from comentario where idpostagem = "
					+ idpostagem + " and moderado = 1";
			PreparedStatement smtp = (PreparedStatement) con
					.prepareStatement(query);
			ResultSet res = smtp.executeQuery();
			while (res.next()) {
				Comentario comentario = new Comentario(
						res.getInt("idcomentario"), res.getInt("idpostagem"),
						res.getInt("moderado"), res.getString("nome"),
						res.getString("email"), res.getString("texto"),
						res.getDate("data"));
				comentarios.add(comentario);
			}
			return comentarios;
		} catch (SQLException e) {
			throw new SQLException(e);
		}

	}
}
