package br.com.passei.main;

import java.util.Date;

public class Postagem {
	private String titulo, texto, tags, chamada;
	private int tipo, idusuario, idpostagem;
	private Date data;

	public Postagem(String titulo, String texto, String tags, int tipo,
			int idusuario, int idpostagem, Date data) {
		setTitulo(titulo);
		setTexto(texto);
		setTags(tags);
		setTipo(tipo);
		setIdusuario(idusuario);
		setIdpostagem(idpostagem);
		setData(data);
		setChamada(texto.substring(texto.indexOf("<chamada>"), texto.lastIndexOf("</chamada>")).replaceAll("<chamada>|</chamada>", ""));
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

	public int getTipo() {
		return tipo;
	}

	public void setTipo(int tipo) {
		this.tipo = tipo;
	}

	public int getIdusuario() {
		return idusuario;
	}

	public void setIdusuario(int idusuario) {
		this.idusuario = idusuario;
	}

	public int getIdpostagem() {
		return idpostagem;
	}

	public void setIdpostagem(int idpostagem) {
		this.idpostagem = idpostagem;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public String getChamada() {
		return chamada;
	}

	public void setChamada(String chamada) {
		this.chamada = chamada;
	}

}
