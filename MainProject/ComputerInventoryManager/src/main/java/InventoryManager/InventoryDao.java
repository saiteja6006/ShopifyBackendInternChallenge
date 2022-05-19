package InventoryManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

public class InventoryDao {
	public boolean addProduct(ProductBean product) {
		// TODO Auto-generated method stub
		Connection con = DBConnection.getConn();
		String sql = "insert into products (id, product , NoOfUnits) values (?,?,?) ";
		int i = 0;
		try {
			PreparedStatement preparedStatement = con.prepareStatement(sql);
			preparedStatement.setInt(1, product.getId());
			preparedStatement.setString(2, product.getProduct());
			preparedStatement.setInt(3, product.getNoOfUnits());
			i = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (i == 0) {
			return false;
		} else {
			return true;
		}
	}

	public boolean editProduct(ProductBean product) {
		Connection connection = DBConnection.getConn();
		String sql = "update products set NoOfUnits=?";
		sql += " where id=?";
		int i = 0;
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, product.getNoOfUnits());
			preparedStatement.setInt(2, product.getId());
			i = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (i == 0) {
			return false;
		} else {
			return true;
		}
	}

	public void deleteProduct(int id) {
		Connection connection = DBConnection.getConn();
		String sql = "delete from products where id=?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public List<ProductBean> viewProduct() throws SQLException {
		List<ProductBean> products = new ArrayList<>();
		Connection connection = DBConnection.getConn();
		String sql = "Select * from products";
		try {
			Statement stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int id = rs.getInt("id");
				String product = rs.getString("Product");
				int noOfUnits = rs.getInt("NoOfUnits");
				products.add(new ProductBean(id, product, noOfUnits));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return products;
	}

	public List<SalesReportBean> viewSales() {
		List<SalesReportBean> sales = new ArrayList<>();
		Connection connection = DBConnection.getConn();
		String sql = "Select * from salesreport";
		try {
			Statement stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int id = rs.getInt("id");
				String product = rs.getString("Product");
				int salePercentage = rs.getInt("SalePercentage");
				sales.add(new SalesReportBean(id, product, salePercentage));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return sales;
	}

}
