package classifiedads

class Postad {
	
	String adname
	byte[] picture
	String pictureType
	
    static constraints = {
	adname(blank:false)
	picture(nullable:true, maxSize: 1048576 /* 2MB */)
	pictureType(nullable:true)
    }
}
