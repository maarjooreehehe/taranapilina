package classifiedads
import grails.plugin.asyncmail.AsynchronousMailService
import org.springframework.dao.DataIntegrityViolationException

class AccountController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [accountInstanceList: Account.list(params), accountInstanceTotal: Account.count()]
    }

    def create() {
        [accountInstance: new Account(params)]
    }

	def asyncMailService
	def save() {
        def accountInstance = new Account(params)
        if (!accountInstance.save(flush: true)) {
            render(view: "create", model: [accountInstance: accountInstance])
            return
        }
		else if (!accountInstance.save()){
			flash.error = "error(s) creating user: Value of the confirmation password does not match."
			return [account:accountInstance]
		} else {
			
		asyncMailService.sendMail{
		
					to "${accountInstance.emailAddress}"
					subject "Taranapilina Registration"
					body "Welcome to Taranapilina! You can now log in at http://localhost:8080/classifiedads/account/login"
					}

        flash.message = message(code: 'default.created.message', args: [message(code: 'account.label', default: 'Account'), accountInstance.id])
        redirect(action: "afterreg", id: accountInstance.id)
    }}
	
	def show(Long id) {
        def accountInstance = Account.get(id)
        if (!accountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'account.label', default: 'Account'), id])
            redirect(action: "list")
            return
        }

        [accountInstance: accountInstance]
    }
	
	def afterreg(Long id) {
        def accountInstance = Account.get(id)
        if (!accountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'account.label', default: 'Account'), id])
            redirect(action: "list")
            return
        }

        [accountInstance: accountInstance]
    }
	
    def edit(Long id) {
        def accountInstance = Account.get(id)
        if (!accountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'account.label', default: 'Account'), id])
            redirect(action: "list")
            return
        }

        [accountInstance: accountInstance]
    }

    def update(Long id, Long version) {
        def accountInstance = Account.get(id)
        if (!accountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'account.label', default: 'Account'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (accountInstance.version > version) {
                accountInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'account.label', default: 'Account')] as Object[],
                          "Another user has updated this Account while you were editing")
                render(view: "edit", model: [accountInstance: accountInstance])
                return
            }
        }

        accountInstance.properties = params

        if (!accountInstance.save(flush: true)) {
            render(view: "edit", model: [accountInstance: accountInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'account.label', default: 'Account'), accountInstance.id])
        redirect(action: "show", id: accountInstance.id)
    }

    def delete(Long id) {
        def accountInstance = Account.get(id)
        if (!accountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'account.label', default: 'Account'), id])
            redirect(action: "logout")
            return
        }

        try {
            accountInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'account.label', default: 'Account'), id])
            redirect(action: "logout")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'account.label', default: 'Account'), id])
            redirect(action: "show", id: id)
        }
    }
	
	def login = {
		if (request.method == "GET") {
			session.username = null
			def account = new Account()
		}
		else {
		
		def account = Account.findByUsernameAndPassword(params.username,params.password)
		if (account) {
					
			session.username = account.username
			session.name = account.name
			session.userId = account.id
	
			if (session.username == 'supadmin') {
				redirect (controller:'account', action:'index')
			}
			else{
			redirect(controller:'postad', action:'create')
			}
		}

		else {
		flash['message'] = 'Sorry, please enter a valid username and password.'
		}

	}
	}
	
	def logout = {
		session.username = null
		session.name = null
		session.userId = null
		flash.message = 'Successfully logged out from Taranapilina! Please log in to post to your ads.'
		redirect(controller:'postad', action:'list')
	}
}
