package kokokarlo.service;

import java.io.Serializable;
import java.util.List;

import kokokarlo.dao.AccountDao;
import kokokarlo.domain.Account;

public interface AccountManager extends Serializable {
	
	public List<Account> getAccounts();
	public void setAccountDao(AccountDao accountDao);
	public void addAccount(Account account);
	public int deleteAccount(int id);
	
}
