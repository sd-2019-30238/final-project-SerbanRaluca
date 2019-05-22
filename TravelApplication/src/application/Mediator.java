package application;

import java.util.HashMap;
import application.cqrs.commandHandlers.IHandler;
import cqrs.writeModel.ICommand;

public class Mediator {

	public HashMap<ICommand,IHandler> handlers;
	
	public Mediator() {
		handlers=new HashMap<ICommand,IHandler>();
	}
	
	public void registerHandler(ICommand command,IHandler handler) {
		handlers.put(command,handler);
	}
	
	public String handle(ICommand command) {
		String result = null;
		result=handlers.get(command).handle(command);
		return result;
	}
}
