package cqrs.readModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import application.bean.Hotel;
import application.bean.HotelRezervation;
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
				Hotel hotel = new Hotel(id, name, price,rooms,region);
				list.add(hotel);	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;	
	}
	public static List<HotelRezervation> getHotelRezervations(String hotelId) {
		String sql = "Select username,rooms,check_in,check_out,id_hotel from travel.hotel_rezervation where id_hotel=? ";
		ConnectionFactory.getInstance();
		Connection conn=ConnectionFactory.getConnection();
		PreparedStatement pstm;
		List<HotelRezervation> list = new ArrayList<HotelRezervation>();
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setString(1,hotelId);
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				String username = rs.getString("username");
				int rooms= rs.getInt("rooms");
				String checkIn = rs.getString("check_in");
				String checkOut = rs.getString("check_out");
				HotelRezervation rezervation = new HotelRezervation();
				rezervation.setCheckIn(checkIn);
				rezervation.setCheckOut(checkOut);
				rezervation.setRooms(rooms);
				rezervation.setIdHotel(hotelId);
				rezervation.setUsername(username);
				list.add(rezervation);	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;	
	}
	public static Hotel findHotel(String hotelId) throws SQLException {

		String sql = "Select name,price,rooms,region from travel.hotels where id_hotel=? ";
		ConnectionFactory.getInstance();
		Connection conn=ConnectionFactory.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1,hotelId);

		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			String name = rs.getString("name");
			double price = rs.getDouble("price");
			int rooms= rs.getInt("rooms");
			String region=rs.getString("region");
			Hotel hotel=new Hotel();
			hotel.setIdHotel(hotelId);
			hotel.setName(name);
			hotel.setPrice(price);
			hotel.setRooms(rooms);
			hotel.setRegion(region);
			return hotel;
		}
		return null;
	}
}

