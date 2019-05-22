package application.servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cqrs.readModel.UserQueryService;

/**
 * Servlet implementation class ResetPassword
 */
@WebServlet("/forgotPassword")
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ForgotPassword() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher= this.getServletContext().getRequestDispatcher("/forgotpassword.jsp");

		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String number = request.getParameter("phone");
		String username=request.getParameter("username");
		String nr=UserQueryService.checkNumber(username);
		if(nr!=null && nr.equals(number)) {
		int randomPIN = (int)(Math.random()*9000)+1000;
		String resetCode=Integer.toString(randomPIN);
		request.setAttribute("code", resetCode);
		System.out.println("Reset code:"+resetCode+" has been sended to number "+number);	
		request.getRequestDispatcher("/resethandler.jsp").forward(request, response);
		}else {
			String errMessage="Invalid username or number!";
			request.setAttribute("errMessage",errMessage);
			request.getRequestDispatcher("/forgotpassword.jsp").forward(request, response);
		}
	}
}
