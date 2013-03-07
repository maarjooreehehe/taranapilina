package kokokarlo.service;

//import kokokarlo.domain.Account;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kokokarlo.dao.LoginDao;
import kokokarlo.domain.Login;

import org.springframework.validation.Validator;
import org.springframework.validation.Errors;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class LoginAuthenticator implements Validator {

	
	private LoginDao loginDao;
	private List<Login> logins;
	private Map<String, String> map = new HashMap<String, String>();

	/** Logger for this class and subclasses */
	protected final Log logger = LogFactory.getLog(getClass());

	public LoginAuthenticator(){
		
	}
	public boolean supports(Class clazz) {
		return Login.class.equals(clazz);
	}

	public void validate(Object obj, Errors errors) {
		Login login = (Login) obj;

		map = getUsers();

		if (login.getUsername() == null || login.getUsername() == "") {
			errors.rejectValue("username", "error.no.input",
					"Username is blank!");
		}

		if (login.getPassword() == null || login.getPassword() == "") {
			errors.rejectValue("password", "error.no.input",
					"Passsword is blank!");
		} else {
			if (map.containsKey(login.getUsername())) {
				String password = map.get(login.getUsername());

				if (!login.getPassword().equals(password)) {
					errors.rejectValue("password", "wrong.password",
							"Password Incorrect");
				}
			} else {
				errors.rejectValue("username", "error.invalid.user",
						"User Not Recognized");
			}

		}
	}

	public Map<String, String> getUsers() {
		logins  = loginDao.getLoginList();
		if (logins != null) {
			for (Login login : logins) {
				map.put(login.getUsername(), login.getPassword());
			}
		}
		return map;
	}

	
	public LoginDao getLoginDao() {
		return loginDao;
	}

	public void setLoginDao(LoginDao loginDao) {
		this.loginDao = loginDao;
	}
	

}