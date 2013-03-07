package kokokarlo.dao;

import java.util.List;

import kokokarlo.domain.Account;

public interface AccountDao {
	
	public List<Account> getAccountList();

	public void addAccount(Account account);
	
	public void saveAccout(Account account);
	
	public int deleteAccount(int id);
}
