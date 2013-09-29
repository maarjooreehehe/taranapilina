package classifiedads

class Account {

		String name
		String username
		String password
		String emailAddress
		String address
		Date dateCreated
		Date lastUpdated
		
		static hasMany = [ads: Postad]
		
		String toString() { return name }
		
    static constraints = {
		name (blank:false)
		username (size:6..10, unique:true, blank:false) 
        password (size:6..10, blank:false) 
		emailAddress (email:true, unique:true, blank:false)
		address(blank:false)
		dateCreated()
		lastUpdated()
		
}
}
