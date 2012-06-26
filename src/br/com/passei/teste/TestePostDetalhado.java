package br.com.passei.teste;

import java.sql.SQLException;
import java.util.ArrayList;

import br.com.passei.dao.PostagemDao;
import br.com.passei.main.Postagem;

public class TestePostDetalhado {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		PostagemDao dao = new PostagemDao();
		ArrayList<Postagem> post= dao.getPostagemPorId(1);
		
		for (Postagem postagem : post) {
			System.out.println(postagem.getTexto());
		}
	}
}
