package cqrs.readModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import application.bean.Destination;
import dataAccess.connection.ConnectionFactory;

public class DestinationQueryService {

	public static List<Destination> getDestinations() {
		String sql = "Select id, city,country,photo,price,days from travel.destinations ";
		ConnectionFactory.getInstance();
		Connection conn=ConnectionFactory.getConnection();
		PreparedStatement pstm;
		List<Destination> list = new ArrayList<Destination>();
		try {
			pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				String id = rs.getString("id");
				String city = rs.getString("city");
				String country = rs.getString("country");
				String photo = rs.getString("photo");
				double price = rs.getDouble("price");
				int days= rs.getInt("days");
				Destination destination = new Destination(id, city,country, photo, price,days);
				list.add(destination);	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;	
	}
	
	public static Destination findByName(String name) throws SQLException {

		String sql = "Select id,city,country,photo,price,days  from travel.destinations  where city = ? ";
		ConnectionFactory.getInstance();
		Connection conn=ConnectionFactory.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1,name);

		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			Destination dst = new Destination();
			String id = rs.getString("id");
			String city = rs.getString("city");
			String country = rs.getString("country");
			String photo = rs.getString("photo");
			double price = rs.getDouble("price");
			int days= rs.getInt("days");
			dst.setCity(city);
			dst.setCountry(country);
			dst.setDays(days);
			dst.setId(id);
			dst.setPhoto(photo);
			dst.setPrice(price);
			return dst;
		}
		return null;
	}
	
	public static Destination findById(String id) throws SQLException {

		String sql = "Select id,city,country,photo,price,days  from travel.destinations  where id = ? ";
		ConnectionFactory.getInstance();
		Connection conn=ConnectionFactory.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1,id);

		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			Destination dst = new Destination();
			String city = rs.getString("city");
			String country = rs.getString("country");
			String photo = rs.getString("photo");
			double price = rs.getDouble("price");
			int days= rs.getInt("days");
			dst.setCity(city);
			dst.setCountry(country);
			dst.setDays(days);
			dst.setId(id);
			dst.setPhoto(photo);
			dst.setPrice(price);
			return dst;
		}
		return null;
	}
}
