package br.com.passei.teste;

import java.sql.SQLException;
import java.util.ArrayList;

import br.com.passei.dao.MenuDao;
import br.com.passei.main.MenuLateral;
import br.com.passei.main.SubMenu;

public class TesteListaMenu {
	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		MenuDao dao = new MenuDao();
		ArrayList<MenuLateral> lista = dao.getAllMenu();
		for (MenuLateral menuLateral : lista) {
			System.out.println(menuLateral.getNomeMenu());
			ArrayList<SubMenu> submenus = menuLateral.getSubmenu();
			System.out.println("Submenu");
			for (SubMenu subMenu : submenus) {
				System.out.println(subMenu.getNomeSubmenu());
			}
		}
	}
}
