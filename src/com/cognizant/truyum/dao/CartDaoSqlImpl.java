package com.cognizant.truyum.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.cognizant.truyum.model.Cart;
import com.cognizant.truyum.model.MenuItem;

public class CartDaoSqlImpl implements CartDao {

	@Override
	public void addCartItem(long userId, long menuItemId) {
		// TODO Auto-generated method stub
		Connection con = ConnectionHandler.getConnection();
		String query = "insert cart(u_id,m_id) values(?,?)";
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setLong(1, userId);
			ps.setLong(2, menuItemId);
			ps.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<MenuItem> getAllCartItems(long userId) throws CartEmptyException {
		// TODO Auto-generated method stub
		Connection con = ConnectionHandler.getConnection();
		ArrayList<MenuItem> menuItemList = new ArrayList<MenuItem>();
		Cart cart = new Cart(menuItemList, 0);
		String query = "select * from menu_item m join cart c on m.id=c.m_id\r\n" + "where c.u_id=?;";
		MenuItem menuItem = null;

		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setLong(1, userId);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				long id = rs.getInt("id");
				String name = rs.getString("Name");
				float price = rs.getInt("Price");
				String active = rs.getString("Active");
				Date date = rs.getDate("Date_of_Launch");
				String category = rs.getString("Category");
				String freeDelivery = rs.getString("Free_Delivery");
				boolean activeCheck = false;
				if (active.equalsIgnoreCase("Yes")) {
					activeCheck = true;
				}
				boolean freeDeli = false;
				if (freeDelivery.equalsIgnoreCase("Yes")) {
					freeDeli = true;
				}
				menuItem = new MenuItem(id, name, price, activeCheck, date, category, freeDeli);
				menuItemList.add(menuItem);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return menuItemList;
	}

	@Override
	public void removeCartItem(long userId, long menuItemId) {
		// TODO Auto-generated method stub
		Connection con = ConnectionHandler.getConnection();
		String query = "delete from cart\r\n" + "where u_id=? and m_id=?;";
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setLong(1, userId);
			ps.setLong(2, menuItemId);
			ps.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
