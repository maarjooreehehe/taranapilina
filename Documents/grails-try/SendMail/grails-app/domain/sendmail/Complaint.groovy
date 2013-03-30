package sendmail

class Complaint {

    String complaint
	String complaint_Type
	
    static constraints = {
	complaint_Type(inList:['normal', 'important', 'emergency'],blank:false)
	complaint(blank:false)
	
    }
}
