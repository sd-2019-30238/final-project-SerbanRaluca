package cqrs.writeModel;

import application.bean.Flight;

public class BookFlightCommand implements ICommand{
	
	private String username;
	private Flight flight;
	
	public BookFlightCommand(String username,Flight flight) {
		this.setUsername(username);
		this.setFlight(flight);
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Flight getFlight() {
		return flight;
	}

	public void setFlight(Flight flight) {
		this.flight = flight;
	}

}
