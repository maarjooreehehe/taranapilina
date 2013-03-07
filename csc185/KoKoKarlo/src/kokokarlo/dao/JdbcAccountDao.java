package kokokarlo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.simple.ParameterizedRowMapper;
import org.springframework.jdbc.core.simple.SimpleJdbcDaoSupport;

import kokokarlo.domain.Account;

public class JdbcAccountDao extends SimpleJdbcDaoSupport implements AccountDao {
	
	protected final Log Logger = LogFactory.getLog(getClass());

	public List<Account> getAccountList() {
		logger.info("Getting Accounts");
		List<Account> accounts = getSimpleJdbcTemplate().query(
				"Select * from public.accounts", new AccountMapper());
		return accounts;

	}

	public void saveAccount(Account account) {
		logger.info("Saving Account:" + account.getEmail());
		String sql = "update public.accounts set email= :email, password= :password, firsname= :firstname, lastname= :lastname, dateofbirth = :dateofbirth, contactnumber= ;contactnumber where username= :username";
		MapSqlParameterSource paramsrc = new MapSqlParameterSource();
		paramsrc.addValue("email", account.getEmail());
		paramsrc.addValue("password", account.getPassword());
		paramsrc.addValue("firstname", account.getFirstName());
		paramsrc.addValue("lastname", account.getLastName());
		paramsrc.addValue("dateofbirth", account.getDateOfBirth());
		paramsrc.addValue("contactnumber", account.getContactNumber());
		paramsrc.addValue("username", account.getUsername());
		int count = getSimpleJdbcTemplate().update(sql, paramsrc);
		logger.info("Rows affected: " + count);
	}

	public void addAccount(Account account) {
		logger.info("Saving Account:" + account.getEmail());
		String sql = "insert into public.accounts(email,password,firstname,lastname,dateofbirth,contactnumber) values(:email, :password, :firstname, :lastname, :dateofbirth, :contactnumber)";
		MapSqlParameterSource paramsrc = new MapSqlParameterSource();
		paramsrc.addValue("email", account.getEmail());
		paramsrc.addValue("password", account.getPassword());
		paramsrc.addValue("firstname", account.getFirstName());
		paramsrc.addValue("lastname", account.getLastName());
		paramsrc.addValue("dateofbirth", account.getDateOfBirth());
		paramsrc.addValue("contactnumber", account.getContactNumber());
		logger.info(paramsrc.toString());
		int count = getSimpleJdbcTemplate().update(sql, paramsrc);

		logger.info("Rows affected: " + count);
	}
	
	public int deleteAccount(String username) {
		String sql = "delete from public.accounts where username = :username";
		MapSqlParameterSource paramsrc = new MapSqlParameterSource();
		paramsrc.addValue("username", username);
		int count = getSimpleJdbcTemplate().update(sql, paramsrc);
		logger.info("Rows affected: " + count);
		return count;
	}

	public static class AccountMapper implements
			ParameterizedRowMapper<Account> {

		public Account mapRow(ResultSet rs, int arg1) throws SQLException {
			Account account = new Account();
			account.setUsername(rs.getString("username"));
			account.setPassword(rs.getString("password"));
			account.setFirstName(rs.getString("firstname"));
			account.setLastName(rs.getString("lastname"));
			account.setDateOfBirth(rs.getString("dateofbirth"));
			account.setContactNumber(rs.getString("contactnumber"));
			account.setEmail(rs.getString("email"));
			return account;
		}

	}

	@Override
	public void saveAccout(Account account) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int deleteAccount(int id) {
		// TODO Auto-generated method stub
		return 0;
	}	
	
}
