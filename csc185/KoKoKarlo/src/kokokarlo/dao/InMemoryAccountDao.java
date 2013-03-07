package kokokarlo.dao;

import java.util.List;

import kokokarlo.domain.Account;

public class InMemoryAccountDao implements AccountDao{
	
	private List<Account> accountList;

	public InMemoryAccountDao(List<Account> accountList) {
		this.accountList = accountList;
	}

	public List<Account> getAccountList() {
		return accountList;
	}

	public void saveAccount(Account account) {
		// TODO Auto-generated method stub

	}

	public void addAccount(Account account) {
		// TODO Auto-generated method stub
		
	}

	public int deleteAccount(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void saveAccout(Account account) {
		// TODO Auto-generated method stub
		
	}


}
