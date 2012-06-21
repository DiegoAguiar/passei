package br.com.passei.main;

import java.util.ArrayList;

public class MenuLateral {
	private int id;
	private String nomeMenu;
	private String url;
	private ArrayList<SubMenu> submenu;
	
	public ArrayList<SubMenu> getSubmenu() {
		return submenu;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setSubmenu(ArrayList<SubMenu> submenu) {
		this.submenu = submenu;
	}
	public String getNomeMenu() {
		return nomeMenu;
	}
	public void setNomeMenu(String nomeMenu) {
		this.nomeMenu = nomeMenu;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
}
