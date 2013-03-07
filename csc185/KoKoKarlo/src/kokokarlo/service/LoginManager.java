package kokokarlo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kokokarlo.dao.InMemoryLoginDao;
import kokokarlo.dao.JdbcLoginDao;
import kokokarlo.dao.LoginDao;
import kokokarlo.domain.Login;

public class LoginManager {
	private List<Login> logins;
	private LoginDao loginDao;
	private Map<String, String> map = new HashMap<String, String>();
	
	public LoginManager(){
		loginDao = new JdbcLoginDao();
	}

	public Map<String, String> getUsers() {
		if (logins != null) {
			for (Login login : logins) {
				map.put(login.getUsername(), login.getPassword());
			}
		}
		return map;
	}

	public List<Login> getLogins() {
		return loginDao.getLoginList();
	}

	public void setLoginDao(LoginDao loginDao) {
		this.loginDao = loginDao;
	}

	public void addLogin(Login login){
		loginDao.addLogin(login);
	}
	
	public int deleteLogin(int id){
		return loginDao.deleteLogin(id);
	}
}
