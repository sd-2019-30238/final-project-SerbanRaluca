package application.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import application.bean.User;
import application.utils.MyUtils;
import cqrs.readModel.LoginCheckQueryResult;
import cqrs.readModel.UserQueryService;

@WebServlet(urlPatterns = { "/login" })
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//RequestDispatcher dispatcher= this.getServletContext().getRequestDispatcher("/login.jsp");
		//dispatcher.forward(request, response);
		
		HttpSession session ;
		session=request.getSession();
		if(MyUtils.getLoginedUser(session)==null) {
			RequestDispatcher dispatcher= this.getServletContext().getRequestDispatcher("/login.jsp");

			dispatcher.forward(request, response);
		}else {
			RequestDispatcher dispatcher= this.getServletContext().getRequestDispatcher("/error.jsp");

			dispatcher.forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("uname");
		String password = request.getParameter("psw");
		String rememberMeStr = request.getParameter("rememberMe");
		boolean remember = "Y".equals(rememberMeStr);

		User user =new User();
		user.setUsername(userName);
		user.setPassword(password);

		LoginCheckQueryResult result=UserQueryService.loginCheck(userName, password);
		String validate=result.getLoginRole();

		if(validate.equals("Admin_Role"))
		{
			System.out.println("Admin's Home");

			HttpSession session ;//Creating a session
			if(request.getSession(false) == null) {
				session = request.getSession(true);
			} else {
				session = request.getSession(false);
			}
			session.setAttribute("Admin", userName); //setting session attribute
			request.setAttribute("userName", userName);
			MyUtils.storeLoginedUser(session, user);

			// If user checked "Remember me".
			if (remember) {
				MyUtils.storeUserCookie(response, user);
			}
			// Else delete cookie.
			else {
				MyUtils.deleteUserCookie(response);
			}

			request.getRequestDispatcher("/Admin.jsp").forward(request, response);
		}else if(validate.equals("User_Role"))
		{
			System.out.println("User's Home");

			HttpSession session ;//Creating a session
			if(request.getSession(false) == null) {
				session = request.getSession(true);
			} else {
				session = request.getSession(false);
			}
			session.setMaxInactiveInterval(10*60);
			session.setAttribute("User", userName);
			request.setAttribute("userName", userName);
			MyUtils.storeLoginedUser(session, user);

			// If user checked "Remember me".
			if (remember) {
				MyUtils.storeUserCookie(response, user);
			}
			// Else delete cookie.
			else {
				MyUtils.deleteUserCookie(response);
			}

			request.getRequestDispatcher("/User.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("errMessage","Username or password invalid!Please try again!");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
	}
}
