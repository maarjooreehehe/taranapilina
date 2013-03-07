package kokokarlo.service;

import java.util.ArrayList;
import java.util.List;

import kokokarlo.dao.AccountDao;
import kokokarlo.dao.JdbcAccountDao;
import kokokarlo.domain.Account;

public class SimpleAccountManager implements AccountManager {
	
	private static final long serialVersionUID = 1L;
	//private List<Account> accounts;
	private AccountDao accountDao;
	
	public SimpleAccountManager(){
		accountDao = new JdbcAccountDao();
	}

	public List<Account> getAccounts() {
		return accountDao.getAccountList();
	}

	/*public void setAccounts(List<Account> accounts) {
		this.accounts = accounts;
		
	}*/
	
	public void setAccountDao(AccountDao accountDao){
		this.accountDao = accountDao;
	}

	public void addAccount(Account account) {
		this.accountDao.addAccount(account);
		
	}

	public int deleteAccount(int username) {
		return this.accountDao.deleteAccount(username);
		
	}

}
