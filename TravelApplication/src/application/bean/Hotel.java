package application.bean;

public class Hotel {

	private String idHotel;
	private String name;
	private double price;
	private int rooms;
	private String region;
	
	
	public Hotel(String id,String name,double price,int rooms, String region ) {
		this.idHotel=id;
		this.name=name;
		this.price=price;
		this.rooms=rooms;
		this.region=region;
	}
	
	
	public Hotel() {
		// TODO Auto-generated constructor stub
	}


	public String getIdHotel() {
		return idHotel;
	}
	public void setIdHotel(String idHotel) {
		this.idHotel = idHotel;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public int getRooms() {
		return rooms;
	}
	public void setRooms(int rooms) {
		this.rooms = rooms;
	}


	public String getRegion() {
		return region;
	}


	public void setRegion(String region) {
		this.region = region;
	}
}
