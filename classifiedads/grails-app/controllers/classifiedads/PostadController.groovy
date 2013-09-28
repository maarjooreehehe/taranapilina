package classifiedads

import org.springframework.dao.DataIntegrityViolationException

class PostadController extends BaseController {
	
	def beforeInterceptor = [action:this.&auth,except:['list', 'show']]
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [postadInstanceList: Postad.list(params), postadInstanceTotal: Postad.count()]
    }

    def create() {
        [postadInstance: new Postad(params)]
    }

    def save() {
        def postadInstance = new Postad(params)
        if (!postadInstance.save(flush: true)) {
            render(view: "create", model: [postadInstance: postadInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'postad.label', default: 'Postad'), postadInstance.id])
        redirect(action: "show", id: postadInstance.id)
    }

    def show(Long id) {
        def postadInstance = Postad.get(id)
        if (!postadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'postad.label', default: 'Postad'), id])
            redirect(action: "list")
            return
        }

        [postadInstance: postadInstance]
    }

    def edit(Long id) {
        def postadInstance = Postad.get(id)
        if (!postadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'postad.label', default: 'Postad'), id])
            redirect(action: "list")
            return
        }

        [postadInstance: postadInstance]
    }

    def update(Long id, Long version) {
        def postadInstance = Postad.get(id)
        if (!postadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'postad.label', default: 'Postad'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (postadInstance.version > version) {
                postadInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'postad.label', default: 'Postad')] as Object[],
                          "Another user has updated this Postad while you were editing")
                render(view: "edit", model: [postadInstance: postadInstance])
                return
            }
        }

        postadInstance.properties = params

        if (!postadInstance.save(flush: true)) {
            render(view: "edit", model: [postadInstance: postadInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'postad.label', default: 'Postad'), postadInstance.id])
        redirect(action: "show", id: postadInstance.id)
    }

    def delete(Long id) {
        def postadInstance = Postad.get(id)
        if (!postadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'postad.label', default: 'Postad'), id])
            redirect(action: "list")
            return
        }

        try {
            postadInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'postad.label', default: 'Postad'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'postad.label', default: 'Postad'), id])
            redirect(action: "show", id: id)
        }
    }
}
