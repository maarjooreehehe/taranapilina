
import static org.junit.Assert.*;

import org.junit.Test;
import junit.framework.TestCase;
import kokokarlo.domain.Register;


public class RegisterTest extends TestCase {
	
	@Test
	public void test() {
	
		Register name =new Register();
		String clientName = name.getName();
		assertEquals(clientName);
		
		Register username = new Register();
		String clientUsername = username.getUsername();
		assertEquals(clientUsername);
		
		Register password = new Register();
		String clientPassword = password.getPassword();
		assertEquals(clientPassword);
		
		Register dob = new Register();
		String clientDob = dob.getDob();
		assertEquals(clientDob);
		
		
	}

	private void assertEquals(String clientName) {
		// TODO Auto-generated method stub
		
	}

}
