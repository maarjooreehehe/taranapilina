package classifiedads

class Postad {
	
	String adname
	byte[] picture
	String pictureType
	Float price
	String location
	String contactNo
	String condition
	String category
	Date dateCreated
	Date lastUpdated
	String description
	Account owner
	
	
	static belongsTo = [Account]
	
	static searchable = true

	
    static constraints = {
	adname(blank:false)
	picture(nullable:true, maxSize: 1048576 /* 2MB */)
	pictureType(nullable:true)
	price(blank:false, scale:2)
	location(blank:false, inList:["Cagayan de Oro", "Cebu", "Davao", "Iligan City", "Metro Manila", "Others"])
	contactNo(size:11..12, unique:false, blank:false)
	condition(blank:false, inList:["Brand New", "Second Hand (Used)", "Defective"])
	category(blank:false, inList:["Appliances", "Books", "Clothing and Accessories", "Electronics", "Furniture", "Games", "Health and Beauty", "Music", "Office and School Supplies", "Outdoors and Gardens", "Pets", "Phones and Handhelds", "Souvenirs and Giveaways", "Sports and Hobbies", "Tools"])
	dateCreated()
	lastUpdated()
    }
	
	static mapping = {
	sort dateCreated: "desc"
	}

}
