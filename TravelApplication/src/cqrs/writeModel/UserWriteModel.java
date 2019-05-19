package cqrs.writeModel;

import application.Mediator;
import application.bean.User;
import application.cqrs.commandHandlers.IHandler;
import application.cqrs.commandHandlers.RegisterUserHandler;

public class UserWriteModel {
	
	private Mediator mediator;
	
	public UserWriteModel(Mediator mediator) {
		this.mediator=mediator;
	}

	public String registerUser(User user)
	{
		ICommand command=new UserRegisterCommand(user);
		IHandler handler=new RegisterUserHandler();
		mediator.registerHandler(handler);
		return mediator.handle(command);
	}

	public Mediator getMediator() {
		return mediator;
	}

	public void setMediator(Mediator mediator) {
		this.mediator = mediator;
	}
	
}
