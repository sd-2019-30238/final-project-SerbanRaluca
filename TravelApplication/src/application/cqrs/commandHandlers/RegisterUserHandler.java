package application.cqrs.commandHandlers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import application.bean.User;
import cqrs.writeModel.ICommand;
import cqrs.writeModel.UserRegisterCommand;
import dataAccess.connection.ConnectionFactory;

public class RegisterUserHandler implements IHandler{

	public RegisterUserHandler() {
	}


	@Override
	public String handle(ICommand registerUserCommand) {
		User user=((UserRegisterCommand) registerUserCommand).getUser();
		String email = user.getEmail();
		String userName = user.getUsername();
		String password = user.getPassword();
		String number = user.getNumber();

		Connection con = null;
		PreparedStatement preparedStatement = null;

		try
		{
			ConnectionFactory.getInstance();
			con = ConnectionFactory.getConnection();
			String query = "insert into travel.user (username,email,password,number,role) values (?,?,?,?,?)"; 
			preparedStatement = con.prepareStatement(query); 
			preparedStatement.setString(2, email);
			preparedStatement.setString(1, userName);
			preparedStatement.setString(3, password);
			preparedStatement.setString(4, number);
			preparedStatement.setString(5, "User");

			int i= preparedStatement.executeUpdate();

			if (i!=0)  //Just to ensure data has been inserted into the database
				return "SUCCESS"; 
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}

		return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
	}

}
