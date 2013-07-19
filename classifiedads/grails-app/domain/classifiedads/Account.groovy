package classifiedads

class Account {

		String name
		String username
		String password
		String address
		String emailAddress
		String phoneNumber
		String gender
	
    static constraints = {
		name(blank:false)
		username(blank:false)
		password(blank:false)
		address(blank:false)
		emailAddress(blank:false)
		phoneNumber(blank:false)
		gender(inList:['Male', 'Female'],blank:false)
 }
	
}
