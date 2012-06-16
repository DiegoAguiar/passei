package br.com.passei.logica;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class MenuLogica {
	public void getArquivo() throws IOException {
		BufferedReader in = new BufferedReader(new FileReader("C:/Netgear/Template00.html"));
		String str;
		while (in.ready()) {
			str=in.readLine();
			System.out.println(str);
		}
		in.close();
	}
}
