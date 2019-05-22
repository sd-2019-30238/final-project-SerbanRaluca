package application.cqrs.commandHandlers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import application.cqrs.commandHandlers.IHandler;
import cqrs.writeModel.ICommand;
import cqrs.writeModel.UpdatePasswordCommand;
import dataAccess.connection.ConnectionFactory;

public class UpdatePasswordHandler implements IHandler {
	
	private String type;

	public UpdatePasswordHandler() {
		this.setType("updatePassword");
	}

	@Override
	public String handle(ICommand updatePasswordCommand) {
		String password=((UpdatePasswordCommand) updatePasswordCommand).getPassword();
		String username=((UpdatePasswordCommand) updatePasswordCommand).getUsername();
		String sql = "UPDATE travel.user SET password=? WHERE username=?";
		Connection con = null;
		PreparedStatement preparedStatement = null;
		try {
			ConnectionFactory.getInstance();
			con=ConnectionFactory.getConnection();
			preparedStatement = con.prepareStatement(sql);
			preparedStatement.setString(1, password);
			preparedStatement.setString(2, username);

			int i= preparedStatement.executeUpdate();

			if (i!=0)  //Just to ensure data has been inserted into the database
				return "SUCCESS"; 
		}catch(SQLException e){
			e.printStackTrace();
		}

		return "Oops.. Something went wrong there..!";
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
}
