package classifiedads

class Account {

		String name
		String username
		String password
		String emailAddress
	
    static constraints = {
		name(blank:false)
		username(blank:false)
		password(blank:false)
		emailAddress(blank:false)
}
}
