package classifiedads

class Account {

		String name
		String username
		String password
		String emailAddress
	
    static constraints = {
		name(blank:false)
		username(size:6..8,unique:true, blank:false) 
        password(size:6..8,blank:false) 
		emailAddress(blank:false)
}
}
