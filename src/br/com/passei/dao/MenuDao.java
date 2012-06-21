package br.com.passei.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.passei.connection.ConnectionFactory;
import br.com.passei.main.MenuLateral;
import br.com.passei.main.SubMenu;

import com.mysql.jdbc.PreparedStatement;

public class MenuDao {
	public ArrayList<MenuLateral> getAllMenu() throws SQLException, ClassNotFoundException {
		ArrayList<MenuLateral> menus = new ArrayList<MenuLateral>();
		try {
			Connection con = new ConnectionFactory().getConnection();
			String query = "select * from menu";
			PreparedStatement smtp = (PreparedStatement) con.prepareStatement(query);
			ResultSet result= smtp.executeQuery();
			while (result.next()) {
				MenuLateral menu = new MenuLateral();
				menu.setNomeMenu(result.getString("nome"));
				menu.setUrl(result.getString("url"));
				menu.setId(result.getInt("idmenu"));
				menu.setSubmenu(getSubmenu(result.getInt("idmenu")));
				menus.add(menu);
			}
			con.close();
			return menus;
		} catch (SQLException e) {
			throw new SQLException(e);
		}
		
	}
	
	public ArrayList<SubMenu> getSubmenu(int id) throws SQLException, ClassNotFoundException {
		ArrayList<SubMenu> submenus = new ArrayList<SubMenu>();
		try {
			Connection con = new ConnectionFactory().getConnection();
			String query="select * from submenu where idmenu="+id;
			PreparedStatement smtp = (PreparedStatement) con.prepareStatement(query);
			ResultSet result = smtp.executeQuery();
			while (result.next()) {
				SubMenu submenu = new SubMenu();
				submenu.setNomeSubmenu(result.getString("nome"));
				submenu.setUrl(result.getString("url"));
				submenus.add(submenu);
			}
			con.close();
			return submenus;
		} catch (SQLException e) {
			throw new SQLException(e);
		}
	}
}
