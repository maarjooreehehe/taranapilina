package owlingapp

class Complaint {

    String complaint
	String complaint_Type
	String services
	
	
    static constraints = {
	complaint_Type(inList:['normal', 'important', 'emergency'],nullable:true)
	complaint(blank:false)
	services(inList:['Meter Relocation', 'Service drops transfer', 'Replacement of service drops', 'Single metering'], nullable:true)
	
    }
}
