package kokokarlo.domain;

public class Login {
	
	private int loginId;
	private String username;
	private String password;
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}

	public void setLoginId(int loginId) {
		this.loginId = loginId;
	}

	public int getLoginId() {
		return loginId;
	}
	
	
}
