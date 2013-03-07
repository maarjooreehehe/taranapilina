package kokokarlo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kokokarlo.domain.Login;

public class LoginManager {
	private List<Login> logins;
	private Map<String, String> map = new HashMap<String, String>();

	public Map<String, String> getUsers() {
		if (logins != null) {
			for (Login login : logins) {
				map.put(login.getUsername(), login.getPassword());
			}
		}
		return map;
	}

	public List<Login> getLogins() {
		return logins;
	}

	public void setLogins(List<Login> logins) {
		this.logins = logins;
	}

}
