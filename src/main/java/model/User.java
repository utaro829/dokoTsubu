package model;

import java.io.Serializable;

public class User implements Serializable {

	private String userName;
	private String loginPass;

	public User() {};
	
	public User(String userName, String loginPass) {
		this.userName = userName;
		this.loginPass = loginPass;
	};
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserName() {
		return userName;
	}
	public void setLoginPass(String loginPass) {
		this.loginPass = loginPass;
	}
	public String getLoginPass() {
		return loginPass;
	}
	
}
