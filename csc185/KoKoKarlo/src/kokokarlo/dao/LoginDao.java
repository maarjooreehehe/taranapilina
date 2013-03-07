package kokokarlo.dao;

import java.util.List;

import kokokarlo.domain.Login;

public interface LoginDao {

	public List<Login> getLoginList();

	public void addLogin(Login login);
	
	public void saveLogin(Login login);
	
	public int deleteLogin(int id);
	
}
