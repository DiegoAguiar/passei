package br.com.passei.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.passei.connection.ConnectionFactory;
import br.com.passei.main.MenuLateral;

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
				
				menus.add(menu);
			}
			con.close();
			return menus;
		} catch (SQLException e) {
			throw new SQLException(e);
		}
		
	}
}
