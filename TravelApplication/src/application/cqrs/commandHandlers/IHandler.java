package application.cqrs.commandHandlers;

import cqrs.writeModel.ICommand;

public interface IHandler {

	public String handle(ICommand command);
}
