package model;

public class LoginLogic {
	
	public boolean execute(User user) {
		
		if(user.getLoginPass().equals("1234")) {
			return true;
		}
		
		return false;
	}

}