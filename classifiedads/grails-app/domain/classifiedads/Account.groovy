package classifiedads

class Account {

		String name
		String username
		String password
		String emailAddress
		
	
    static constraints = {
		name (unique:true, blank:false)
		username (size:6..10, unique:true, blank:false) 
        password (size:6..10, blank:false) 
		emailAddress (unique:true, blank:false)
}
}
