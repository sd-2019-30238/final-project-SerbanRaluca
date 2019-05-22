package application.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import application.Mediator;
import application.bean.User;
import application.validators.EmailValidator;
import application.validators.NumberValidator;
import cqrs.writeModel.UserWriteModel;

/**
 * Servlet implementation class Register
 */
@WebServlet(urlPatterns = { "/register"})
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Register() {
		super();
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());

		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/register.jsp");

		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String number = request.getParameter("phone");

		if(username.length() >45) {
			request.setAttribute("errMessage", " Username cannot be more than 45 characters long.");
			request.getRequestDispatcher("/register.jsp").forward(request, response);
			return;
		}

		if(password.length() >45) {
			request.setAttribute("errMessage", "Password cannot be more than 45 characters long.");
			request.getRequestDispatcher("/register.jsp").forward(request, response);
			return;
		}

		if(email.length() >45) {
			request.setAttribute("errMessage", "Email  cannot be more than 45 characters long.");
			request.getRequestDispatcher("/register.jsp").forward(request, response);
			return;
		}

		if(number.length() >10) {
			request.setAttribute("errMessage", "Contact number cannot be more than 10 characters long.");
			request.getRequestDispatcher("/register.jsp").forward(request, response);
			return;
		}
	
		User user=new User(email,username,password,number);
		EmailValidator validator1=new EmailValidator();
		try {
			validator1.validate(user);
		}catch(IllegalArgumentException e) {
			String msg=e.getMessage();
			request.setAttribute("errMessage",msg);
			request.getRequestDispatcher("/register.jsp").forward(request, response);
			return;
		}
		NumberValidator validator2=new NumberValidator();
		try {
			validator2.validate(user);
		}catch(IllegalArgumentException e) {
			String msg=e.getMessage();
			request.setAttribute("errMessage",msg);
			request.getRequestDispatcher("/register.jsp").forward(request, response);
			return;
		}
		Mediator mediator=new Mediator();
		UserWriteModel writeModel=new UserWriteModel(mediator);
		String userRegistered=writeModel.registerUser(user);
		if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		{
			request.getRequestDispatcher("/welcome.jsp").forward(request, response);
		}
		else   //On Failure, display a meaningful message to the User.
		{
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/register.jsp").forward(request, response);
		}
	}
}
