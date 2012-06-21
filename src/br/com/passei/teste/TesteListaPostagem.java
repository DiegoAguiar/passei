package br.com.passei.teste;

import java.sql.SQLException;
import java.util.ArrayList;

import br.com.passei.dao.PostagemDao;
import br.com.passei.main.Postagem;

public class TesteListaPostagem {
	public static void main(String[] args) throws ClassNotFoundException,
			SQLException {
		PostagemDao dao = new PostagemDao();
		ArrayList<Postagem> postagens = dao
				.getAllPostagemPorAssunto("#casts/videocast");
		for (Postagem postagem : postagens) {
			System.out.println(postagem.getTitulo() + postagem.getChamada() + postagem.getTexto());
		}
	}
}
