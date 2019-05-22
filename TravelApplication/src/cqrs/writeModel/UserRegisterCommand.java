package cqrs.writeModel;

import application.bean.User;

public class UserRegisterCommand implements ICommand {

	private User user;
	public UserRegisterCommand(User user) {
		this.setUser(user);
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}	
}
