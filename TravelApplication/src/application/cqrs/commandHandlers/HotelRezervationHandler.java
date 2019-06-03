package application.cqrs.commandHandlers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import application.bean.HotelRezervation;
import cqrs.writeModel.ICommand;
import cqrs.writeModel.HotelRezervationCommand;
import dataAccess.connection.ConnectionFactory;

public class HotelRezervationHandler implements IHandler {

	public HotelRezervationHandler() {
	}


	@Override
	public String handle(ICommand hotelRezervationCommand) {
		HotelRezervation registration=((HotelRezervationCommand)hotelRezervationCommand).getHotelRezervation();
        String username=registration.getUsername();
        String checkin=registration.getCheckIn();
        String checkout=registration.getCheckOut();
        String hotelId=registration.getIdHotel();
        String price=Double.toString(registration.getTotal());
        int rooms=registration.getRooms();
		Connection con = null;
		PreparedStatement preparedStatement = null;

		try
		{
			ConnectionFactory.getInstance();
			con = ConnectionFactory.getConnection();
			String query = "insert into travel.hotel_rezervation (id,username,rooms,check_in,check_out,id_hotel,total) values (null,?,?,?,?,?,?)"; 
			preparedStatement = con.prepareStatement(query); 
			preparedStatement.setInt(2, rooms);
			preparedStatement.setString(1, username);
			preparedStatement.setString(3, checkin);
			preparedStatement.setString(4, checkout);
			preparedStatement.setString(5, hotelId); 
			preparedStatement.setString(6, price); 

			int i= preparedStatement.executeUpdate();

			if (i!=0)  //Just to ensure data has been inserted into the database
				return "SUCCESS"; 
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}

		return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
	}
}
