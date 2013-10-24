package classifiedads

class Account {

		String name
		String username
		String password
		String password2
		String emailAddress
		String address
		Date dateCreated
		Date lastUpdated
		
		static transients = ['password2']
		
		static hasMany = [ads: Postad]
		
		String toString() { return name }
		
    static constraints = {
		name (blank:false)
		username (size:6..10, unique:true, blank:false) 
        password (size:6..10, blank:false, matches:/[\S]+/, validator:{val, obj ->
			if (obj.password != obj.password2)
			return 'user.password.dontmatch'})
		password2 bindable: true
		emailAddress (email:true, unique:true, blank:false)
		address(blank:false)
		dateCreated()
		lastUpdated()
		
}
}
