package application.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import application.Mediator;
import cqrs.writeModel.UserWriteModel;

/**
 * Servlet implementation class ResetServlet
 */
@WebServlet("/resetPassword")
public class ResetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ResetPassword() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher= this.getServletContext().getRequestDispatcher("/resetPassword.jsp");

		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String confirmPass=request.getParameter("confirm");
		if(password.equals(confirmPass)) {
			Mediator mediator=new Mediator();
			UserWriteModel writeModel=new UserWriteModel(mediator);
			String result=writeModel.updatePassword(username, password);
			if(result.equals("SUCCESS"))   //On success, you can display a message to user on Home page
			{
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
			else   //On Failure, display a meaningful message to the User.
			{
				request.setAttribute("errMessage", result);
				request.getRequestDispatcher("/resetPassword.jsp").forward(request, response);
			}
		}else {
			request.getRequestDispatcher("/resetpassword.jsp").forward(request, response);
		}
	}

}
