package br.com.passei.teste;

import java.io.IOException;

import br.com.passei.logica.MenuLogica;

public class TesteLeituraArquivo {
	public static void main(String[] args) throws IOException {
		MenuLogica menu = new MenuLogica();
		menu.getArquivo();
	}
}
