package cqrs.readModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import application.bean.Hotel;
import dataAccess.connection.ConnectionFactory;

public class HotelQueryService {

	public static List<Hotel> getHotels(String region) {
		String sql = "Select id_hotel,name,price,rooms from travel.hotels where region=? ";
		ConnectionFactory.getInstance();
		Connection conn=ConnectionFactory.getConnection();
		PreparedStatement pstm;
		List<Hotel> list = new ArrayList<Hotel>();
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setString(1,region);
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				String id = rs.getString("id_hotel");
				String name = rs.getString("name");
				double price = rs.getDouble("price");
				int rooms= rs.getInt("rooms");
				Hotel hotel = new Hotel(id, name, price,rooms);
				list.add(hotel);	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;	
	}
}
