package br.com.passei.teste;

import java.sql.SQLException;
import java.util.ArrayList;

import br.com.passei.dao.PostagemDao;
import br.com.passei.main.Postagem;

public class TesteListaNovidadesCast {
	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		PostagemDao dao = new PostagemDao();
		ArrayList<Postagem> postagens = dao.getNovidadesCasts();
		for (Postagem postagem : postagens) {
			System.out.println(postagem.getTexto());
		}
	}
}
