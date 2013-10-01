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
	location(blank:false, inList:["Metro Manila", "Batangas", "Benguet", "Bulacan", "Cavite", "Cebu", "Davao del Sur", "Laguna", "Misamis Oriental", "Negros Occidental", "Nueva Ecija", "Pampanga", "Pangasinan", "Rizal", "Tarlac", "Zamboanga City"])
	contactNo(size:11..12, unique:false, blank:false)
	condition(blank:false, inList:["Brand New", "Second Hand (Used)", "Defective"])
	category(blank:false, inList:["Phones and Handhelds", "Computers", "Clothing and Accessories", "Audio and Video Electronics", "Security-Related Products", "Health and Beauty", "Furniture", "Appliances", "Household and Industrial Items", "Toys, Video Games, and Related Items", "Sports and Hobbies", "Collectibles", "Souvenirs and Giveaways", "Office and School Supplies", "Books and other Publications", "Pets", "Medical and Laboratory Equipments", "Tools, Generators, and Accessories", "Outdoors and Gardens", "Musical Instruments", "Food and Related Products", "Arts and Crafts", "CDs, DVDs, and Blu-ray Discs"])
	dateCreated()
	lastUpdated()
    }
	
	static mapping = {
	description type: "text"
	}

}
