package owlingapp


import org.springframework.dao.DataIntegrityViolationException

class ComplaintController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [complaintInstanceList: Complaint.list(params), complaintInstanceTotal: Complaint.count()]
    }

    def create() {
        [complaintInstance: new Complaint(params)]
    }

    def save() {
        def complaintInstance = new Complaint(params)
        if (!complaintInstance.save(flush: true)) {
            render(view: "create", model: [complaintInstance: complaintInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'complaint.label', default: 'Complaint'), complaintInstance.id])
        redirect(action: "show", id: complaintInstance.id)
    }

    def show(Long id) {
        def complaintInstance = Complaint.get(id)
        if (!complaintInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'complaint.label', default: 'Complaint'), id])
            redirect(action: "list")
            return
        }

        [complaintInstance: complaintInstance]
		params.list('services')
    }

    def edit(Long id) {
        def complaintInstance = Complaint.get(id)
        if (!complaintInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'complaint.label', default: 'Complaint'), id])
            redirect(action: "list")
            return
        }

        [complaintInstance: complaintInstance]
    }

    def update(Long id, Long version) {
        def complaintInstance = Complaint.get(id)
        if (!complaintInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'complaint.label', default: 'Complaint'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (complaintInstance.version > version) {
                complaintInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'complaint.label', default: 'Complaint')] as Object[],
                          "Another user has updated this Complaint while you were editing")
                render(view: "edit", model: [complaintInstance: complaintInstance])
                return
            }
        }

        complaintInstance.properties = params

        if (!complaintInstance.save(flush: true)) {
            render(view: "edit", model: [complaintInstance: complaintInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'complaint.label', default: 'Complaint'), complaintInstance.id])
        redirect(action: "show", id: complaintInstance.id)
    }

    def delete(Long id) {
        def complaintInstance = Complaint.get(id)
        if (!complaintInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'complaint.label', default: 'Complaint'), id])
            redirect(action: "list")
            return
        }

        try {
            complaintInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'complaint.label', default: 'Complaint'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'complaint.label', default: 'Complaint'), id])
            redirect(action: "show", id: id)
        }
    }
}

