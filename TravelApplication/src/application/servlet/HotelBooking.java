package application.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import application.Mediator;
import application.bean.Destination;
import application.bean.Hotel;
import application.bean.HotelRezervation;
import application.cqrs.commandHandlers.HotelRezervationHandler;
import application.utils.MyUtils;
import cqrs.readModel.DestinationQueryService;
import cqrs.readModel.HotelQueryService;
import cqrs.writeModel.HotelRezervationCommand;

/**
 * Servlet implementation class HotelBooking
 */
@WebServlet("/HotelBooking")
public class HotelBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HotelBooking() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		request.getSession().setAttribute("hotelId", request.getParameter("id"));
		System.out.println(request.getParameter("id"));
		request.setAttribute("hotelName", name);
		request.getRequestDispatcher("hotelBooking.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=MyUtils.getLoginedUser(request.getSession()).getUsername();
		System.out.println(username);
		String checkin=request.getParameter("checkin");
		String checkout=request.getParameter("checkout");
		String rooms=request.getParameter("rooms");
		try {
			Date start=new SimpleDateFormat("yyyy-MM-dd").parse(checkin);
			Date end=new SimpleDateFormat("yyyy-MM-dd").parse(checkout);
			String hotelId=(String) request.getSession().getAttribute("hotelId");
			List<HotelRezervation> rezervations=HotelQueryService.getHotelRezervations(hotelId);
			int occupiedRooms=0;
			for(HotelRezervation r:rezervations) {
				Date startDate=new SimpleDateFormat("yyyy-MM-dd").parse(r.getCheckIn());
				Date endDate=new SimpleDateFormat("yyyy-MM-dd").parse(r.getCheckOut());		
				if(!(end.compareTo(startDate)<=0 || start.compareTo(endDate)>=0)) {
					occupiedRooms+=r.getRooms();
				}
			}
			Hotel hotel=HotelQueryService.findHotel(hotelId);
			int freeRooms=hotel.getRooms()-occupiedRooms;
			double price=hotel.getPrice();
			if(freeRooms>=Integer.parseInt(rooms)) {
				long millis=Math.abs(start.getTime() - end.getTime());
				long days=TimeUnit.DAYS.convert(millis, TimeUnit.MILLISECONDS);
				double total=days*price;
				HotelRezervation newRezervation=new HotelRezervation();
				newRezervation.setUsername(username);
				newRezervation.setCheckIn(checkin);
				newRezervation.setCheckOut(checkout);
				newRezervation.setRooms(Integer.parseInt(rooms));
				newRezervation.setIdHotel(hotelId);
				newRezervation.setTotal(total);
				HotelRezervationCommand rezervationCommand=new HotelRezervationCommand(newRezervation);
				HotelRezervationHandler handler=new HotelRezervationHandler();
				Mediator mediator=new Mediator();
				mediator.registerHandler(rezervationCommand, handler);
				mediator.handle(rezervationCommand);
				String region=hotel.getRegion();
				Destination dst=DestinationQueryService.findById(region);
				request.setAttribute("city",dst.getCity());
				request.getRequestDispatcher("message.jsp").forward(request, response);
			}else {
				String region=hotel.getRegion();
				Destination dst=DestinationQueryService.findById(region);
				request.setAttribute("destination",dst.getPhoto());
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		
		
		//System.out.println(hotelId);
		
		
	}

}
