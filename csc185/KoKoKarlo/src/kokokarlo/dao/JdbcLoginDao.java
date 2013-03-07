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

import kokokarlo.domain.Login;

public class JdbcLoginDao extends SimpleJdbcDaoSupport implements LoginDao {

	protected final Log Logger = LogFactory.getLog(getClass());

	public List<Login> getLoginList() {
		logger.info("Getting Logins");
		List<Login> logins = getSimpleJdbcTemplate().query(
				"Select * from public.Login", new LoginMapper());
		return logins;

	}

	public void saveLogin(Login login) {
		logger.info("Saving Login:" + login.getUsername());
		String sql = "update public.Login set username = :username, password= :password where loginId= :loginid";
		MapSqlParameterSource paramsrc = new MapSqlParameterSource();
		paramsrc.addValue("username", login.getUsername());
		paramsrc.addValue("firstname", login.getPassword());
		paramsrc.addValue("id", login.getLoginId());
		int count = getSimpleJdbcTemplate().update(sql, paramsrc);
		logger.info("Rows affected: " + count);
	}

	public void addLogin(Login login) {
		logger.info("Saving Login:" +login.getUsername());
		String sql = "insert into public.Login(username,password) values(:username, :password)";
		MapSqlParameterSource paramsrc = new MapSqlParameterSource();
		paramsrc.addValue("username", login.getUsername());
		paramsrc.addValue("password", login.getPassword());
		logger.info(paramsrc.toString());
		int count = getSimpleJdbcTemplate().update(sql, paramsrc);

		logger.info("Rows affected: " + count);
	}

	public int deleteLogin(int id) {
		String sql = "delete from public.Login where loginId = :loginId";
		MapSqlParameterSource paramsrc = new MapSqlParameterSource();
		paramsrc.addValue("loginId", id);
		int count = getSimpleJdbcTemplate().update(sql, paramsrc);
		logger.info("Rows affected: " + count);
		return count;
	}

	public static class LoginMapper implements
			ParameterizedRowMapper<Login> {

		public Login mapRow(ResultSet rs, int arg1) throws SQLException {
			Login login = new Login();
			login.setLoginId(rs.getInt("loginId"));
			login.setUsername(rs.getString("username"));
			login.setPassword(rs.getString("password"));
			return login;
		}

	}

}
