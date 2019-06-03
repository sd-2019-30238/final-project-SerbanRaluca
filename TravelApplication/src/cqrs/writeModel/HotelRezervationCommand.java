package cqrs.writeModel;

import application.bean.HotelRezervation;

public class HotelRezervationCommand implements ICommand{

	HotelRezervation hotelRezervation;
	
	public HotelRezervationCommand(HotelRezervation rezervation) {
		this.hotelRezervation=rezervation;
	}
	
	public HotelRezervation getHotelRezervation() {
		return hotelRezervation;
	}

	public void setHotelRezervation(HotelRezervation hotelRezervation) {
		this.hotelRezervation = hotelRezervation;
	}	
}
