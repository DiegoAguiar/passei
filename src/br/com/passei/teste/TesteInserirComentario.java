package br.com.passei.teste;

import java.sql.SQLException;

import br.com.passei.dao.ComentarioDao;

public class TesteInserirComentario {
	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		ComentarioDao dao = new ComentarioDao();
		dao.insereNovoComentario(1, "Teste", "teste@teste.com", "MaOe");
	}
}
