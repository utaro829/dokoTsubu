package model;

import java.io.Serializable;

public class Mutter implements Serializable{
	
	private String userName;
	private String messageBody;
	
	public Mutter() {};
	
	public Mutter(String userName, String messageBody) {
		this.userName = userName;
		this.messageBody = messageBody;
	};
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserName() {
		return userName;
	}
	public void setMessageBody(String messageBody) {
		this.messageBody = messageBody;
	}
	public String getMessageBody() {
		return messageBody;
	}

}
