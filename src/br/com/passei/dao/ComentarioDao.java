package br.com.passei.dao;

import java.sql.Connection;
import java.sql.Date;
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
			con.close();
			return comentarios;
		} catch (SQLException e) {
			throw new SQLException(e);
		}

	}

	public void insereNovoComentario(int idpostagem, String nome, String email,
			String texto) throws SQLException, ClassNotFoundException {
		try {
			Connection con = new ConnectionFactory().getConnection();
			String query = "insert into comentario (nome,email,texto,data,idpostagem,moderado) values (?,?,?,?,?,?)";
			PreparedStatement smtp = (PreparedStatement) con
					.prepareStatement(query);
			smtp.setString(1, nome);
			smtp.setString(2, email);
			smtp.setString(3, texto);
			Date data = new Date(System.currentTimeMillis());
			smtp.setDate(4, data);
			smtp.setInt(5, idpostagem);
			smtp.setInt(6, 0);
			smtp.execute();
		} catch (SQLException e) {
			throw new SQLException(e);
		}

	}
}
