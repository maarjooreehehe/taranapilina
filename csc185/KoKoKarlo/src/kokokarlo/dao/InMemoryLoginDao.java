package kokokarlo.dao;

import java.util.List;

import kokokarlo.domain.Login;

public class InMemoryLoginDao implements LoginDao {

	private List<Login> loginList;

	public InMemoryLoginDao() {
		
	}
	public InMemoryLoginDao(List<Login> loginList) {
		this.loginList = loginList;
	}

	public void setLoginList(List<Login> loginList) {
		this.loginList = loginList;
	}
	public List<Login> getLoginList() {
		return loginList;
	}

	public void saveLogin(Login login) {
//		loginList.add(login);

	}

	public void addLogin(Login login) {
		loginList.add(login);
		
	}

	public int deleteLogin(int id) {
		if(loginList != null){
			for(Login login: loginList)
				if(login.getLoginId() == id)
					loginList.remove(login);					
		}
		return 0;
	}

}
