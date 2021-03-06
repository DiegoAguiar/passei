package br.com.passei.main;

import java.sql.Date;

public class Comentario {
	private int idcomentario, idpostagem, moderado;
	private String nome, email, texto;
	private Date data;

	public Comentario(int idcomentario, int idpostagem, int moderado, String nome,
			String email, String texto, Date data) {
		setData(data);
		setEmail(email);
		setIdcomentario(idcomentario);
		setIdpostagem(idpostagem);
		setNome(nome);
		setTexto(texto);
		setModerado(moderado);
	}

	public int getModerado() {
		return moderado;
	}

	public void setModerado(int moderado) {
		this.moderado = moderado;
	}

	public int getIdcomentario() {
		return idcomentario;
	}

	public void setIdcomentario(int idcomentario) {
		this.idcomentario = idcomentario;
	}

	public int getIdpostagem() {
		return idpostagem;
	}

	public void setIdpostagem(int idpostagem) {
		this.idpostagem = idpostagem;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}
}
