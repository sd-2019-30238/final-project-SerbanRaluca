package application.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import application.Mediator;
import application.bean.Flight;
import application.cqrs.commandHandlers.BookFlightHandler;
import application.utils.MyUtils;
import cqrs.writeModel.BookFlightCommand;

/**
 * Servlet implementation class BookFlight
 */
@WebServlet("/BookFlight")
public class BookFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookFlight() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("city");
		System.out.println(name);
		request.setAttribute("city",name);
		request.getRequestDispatcher("bookFlight.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=MyUtils.getLoginedUser(request.getSession()).getUsername();
		String from=request.getParameter("from");
		String to=request.getParameter("to");
		String departing=request.getParameter("depart");
		String returning=request.getParameter("return");
		String travelClass=request.getParameter("class");
		Flight flight=new Flight(from,to,departing,returning,travelClass);
        BookFlightCommand bookFlight=new BookFlightCommand(username,flight);
        BookFlightHandler handler=new BookFlightHandler();
        Mediator mediator=new Mediator();
        mediator.registerHandler(bookFlight, handler);
        mediator.handle(bookFlight);
		request.getRequestDispatcher("finish.jsp").forward(request, response);
		
	}

}
