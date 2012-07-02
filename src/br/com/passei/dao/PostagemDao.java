package br.com.passei.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;

import br.com.passei.connection.ConnectionFactory;
import br.com.passei.main.Postagem;

public class PostagemDao {
	public ArrayList<Postagem> getAllPostagemPorAssunto(String assunto)
			throws ClassNotFoundException, SQLException {
		ArrayList<Postagem> postagens = new ArrayList<Postagem>();
		try {
			Connection con = new ConnectionFactory().getConnection();
			String query = "select * from postagem where tags like ('%"
					+ assunto + "%') order by idpostagem desc limit 10";
			PreparedStatement smtp = (PreparedStatement) con
					.prepareStatement(query);
			ResultSet res = smtp.executeQuery();
			while (res.next()) {
				Postagem postagem = new Postagem(res.getString("titulo"),
						res.getString("texto"), res.getString("tags"),
						res.getInt("tipo"), res.getInt("idusuario"),
						res.getInt("idpostagem"), res.getDate("data"));
				postagens.add(postagem);
			}
			con.close();
			return postagens;
		} catch (SQLException e) {
			throw new SQLException(e);
		}
	}

	public ArrayList<Postagem> getPostagemPorId(int idpostagem)
			throws ClassNotFoundException, SQLException {
		ArrayList<Postagem> postagens = new ArrayList<Postagem>();
		ComentarioDao comentarioDao = new ComentarioDao();
		try {
			Connection con = new ConnectionFactory().getConnection();
			String query = "select * from postagem where idpostagem ="
					+ idpostagem;
			PreparedStatement smtp = (PreparedStatement) con
					.prepareStatement(query);
			ResultSet res = smtp.executeQuery();
			while (res.next()) {
				Postagem postagem = new Postagem(res.getString("titulo"),
						res.getString("texto"), res.getString("tags"),
						res.getInt("tipo"), res.getInt("idusuario"),
						res.getInt("idpostagem"), res.getDate("data"));
				postagem.setComentarios(comentarioDao
						.getComentariosModeradosPorPostagem(res
								.getInt("idpostagem")));
				postagens.add(postagem);
			}
			con.close();
			return postagens;
		} catch (SQLException e) {
			throw new SQLException(e);
		}
	}

	public ArrayList<Postagem> getPostagemHome() throws SQLException,
			ClassNotFoundException {
		ArrayList<Postagem> postagens = new ArrayList<Postagem>();
		try {
			Connection con = new ConnectionFactory().getConnection();
			String query = "select * from postagem order by idpostagem desc limit 10";
			PreparedStatement smtp = (PreparedStatement) con
					.prepareStatement(query);
			ResultSet res = smtp.executeQuery();
			while (res.next()) {
				Postagem postagem = new Postagem(res.getString("titulo"),
						res.getString("texto"), res.getString("tags"),
						res.getInt("tipo"), res.getInt("idusuario"),
						res.getInt("idpostagem"), res.getDate("data"));
				postagens.add(postagem);
			}
			con.close();
			return postagens;
		} catch (SQLException e) {
			throw new SQLException(e);
		}
	}

	public ArrayList<Postagem> getNovidadesCasts() throws SQLException,
			ClassNotFoundException {
		ArrayList<Postagem> postagens = new ArrayList<Postagem>();
		try {
			Connection con = new ConnectionFactory().getConnection();
			String query = "select * from postagem where tags like ('%#casts%') order by idpostagem desc limit 10";
			PreparedStatement smtp = (PreparedStatement) con
					.prepareStatement(query);
			ResultSet res = smtp.executeQuery();
			while (res.next()) {
				Postagem postagem = new Postagem(res.getString("titulo"),
						res.getString("texto"), res.getString("tags"),
						res.getInt("tipo"), res.getInt("idusuario"),
						res.getInt("idpostagem"), res.getDate("data"));
				postagens.add(postagem);
			}
			con.close();
			return postagens;
		} catch (SQLException e) {
			throw new SQLException(e);
		}
	}
}
