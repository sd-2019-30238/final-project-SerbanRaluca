package application.cqrs.commandHandlers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import application.bean.Flight;
import cqrs.writeModel.BookFlightCommand;
import cqrs.writeModel.ICommand;
import dataAccess.connection.ConnectionFactory;

public class BookFlightHandler implements IHandler{

	public BookFlightHandler() {
		
	}
	
	@Override
	public String handle(ICommand bookFlightCommand) {
		Flight flight=((BookFlightCommand)bookFlightCommand).getFlight();
        String username=((BookFlightCommand)bookFlightCommand).getUsername();
        System.out.println(username);
        String from=flight.getFrom();
        String to=flight.getTo();
        String departing=flight.getDeparting();
        String returning=flight.getReturning();
        String travelClass=flight.getTravelClass();
        
		Connection con = null;
		PreparedStatement preparedStatement = null;

		try
		{
			ConnectionFactory.getInstance();
			con = ConnectionFactory.getConnection();
			String query = "insert into travel.flights (id,username,from,to,departing,returning,class) values (null,?,?,?,?,?,?)"; 
			preparedStatement = con.prepareStatement(query); 
			preparedStatement.setString(2, from);
			preparedStatement.setString(1, username);
			preparedStatement.setString(3, to);
			preparedStatement.setString(4, departing);
			preparedStatement.setString(5, returning); 
			preparedStatement.setString(6, travelClass); 

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
