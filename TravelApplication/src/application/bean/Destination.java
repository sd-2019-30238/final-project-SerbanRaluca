package application.bean;

public class Destination {
	private String id;
	private String city;
	private String country;
	private double price;
	private String photo;
	private int days;

	public Destination(String id,String city,String country,String photo,double price,int days) {
		this.id=id;
		this.city=city;
		this.country=country;
		this.price=price;
		this.setPhoto(photo);
		this.days=days;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public int getDays() {
		return days;
	}

	public void setDays(int days) {
		this.days = days;
	}

}
