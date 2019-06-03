package application.bean;

public class Flight {
	
	private String from;
	private String to;
	private String departing;
	private String returning;
	private String travelClass;
	
	public Flight() {
		
	}
	
	public Flight(String from,String to,String departing,String returning,String travelClass) {
		this.from=from;
		this.to=to;
		this.departing=departing;
		this.returning=returning;
		this.travelClass=travelClass;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getDeparting() {
		return departing;
	}

	public void setDeparting(String departing) {
		this.departing = departing;
	}

	public String getReturning() {
		return returning;
	}

	public void setReturning(String returning) {
		this.returning = returning;
	}

	public String getTravelClass() {
		return travelClass;
	}

	public void setTravelClass(String travelClass) {
		this.travelClass = travelClass;
	}

}
