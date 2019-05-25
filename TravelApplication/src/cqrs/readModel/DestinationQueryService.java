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
				destination.setCity(city);
				destination.setCountry(country);
				destination.setDays(days);
				destination.setId(id);
				destination.setPhoto(photo);
				destination.setPrice(price);
				list.add(destination);	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;	
	}
}
