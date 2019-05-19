package application.validators;


import java.util.regex.Pattern;

import application.bean.User;

public class NumberValidator implements Validator<User> {
	private static final String REGEX = "^[0-9]*$";
	public void validate(User t) {
		Pattern pattern = Pattern.compile(REGEX);
		if (!pattern.matcher(t.getNumber()).matches()) {
			throw new IllegalArgumentException("Number is not a valid number!");
		}
	}

}

