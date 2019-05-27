package application.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import application.bean.Destination;
import application.bean.Hotel;
import cqrs.readModel.DestinationQueryService;
import cqrs.readModel.HotelQueryService;

/**
 * Servlet implementation class DestinationPage
 */
@WebServlet("/DestinationPage")
public class DestinationPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DestinationPage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		System.out.println(name);
		String names[]=name.split("-");
		System.out.println(names[0]+" "+names[1]);
		String city;
		if(names.length>2) {
			city=names[0]+'-'+names[1];
		}else {
			city=names[0];
		}
		try {
			Destination destination=DestinationQueryService.findByName(city);
			List<Hotel> hotels=HotelQueryService.getHotels(destination.getId());
			request.setAttribute("hotels",hotels);
			request.setAttribute("city", destination.getCity());
			request.setAttribute("country",destination.getCountry());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher("destinationPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
