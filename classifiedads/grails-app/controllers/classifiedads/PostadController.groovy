package classifiedads

import org.springframework.dao.DataIntegrityViolationException

class PostadController extends BaseController {
	
	def beforeInterceptor = [action:this.&auth,except:['list', 'show', 'search']]
	
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
	
	//UPLOADING PICTURE
	
	def uploadPicture(Long id){
		def postadInstance = Postad.get(id)
		render(view:"uploadPicture", model:[postadInstance:postadInstance])
	}
	def upload_picture = {
		def postadInstance = Postad.get(params.id)  // or however you select the current user
		// Get the picture file from the multi-part request
		def f = request.getFile('picture')

		// List of OK mime-types
		def okcontents = ['image/png', 'image/jpeg', 'image/gif']
		if (! okcontents.contains(f.getContentType())) {
			flash.message = "Picture must be one of: ${okcontents}"
			render(view:'uploadPicture', model:[postadInstance:postadInstance])
			return;
		}

		// Save the image and mime type
		postadInstance.picture = f.getBytes()
		postadInstance.pictureType = f.getContentType()
		log.info("File uploaded: " + postadInstance.pictureType)

		// Validation works, will check if the image is too big
		if (!postadInstance.save()) {
			render(view:'uploadPicture', model:[postadInstance:postadInstance])
			return;
		}
  
		flash.message = "Postad (${postadInstance.pictureType}, ${postadInstance.picture.size()} bytes) uploaded."
		redirect(action:'show', id:postadInstance.id)
	}
	
	def picture_image = {
		def picturePostad = Postad.get(params.id)
			if (!picturePostad || !picturePostad.picture || !picturePostad.pictureType) {
				response.sendError(404)
				return;
			}
			response.setContentType(picturePostad.pictureType)
			response.setContentLength(picturePostad.picture.size())
			OutputStream out = response.getOutputStream();
			out.write(picturePostad.picture);
			out.close();
	}
	
	def searchableService 
	
	def search = {
		def query = params.q
		if(query){
			def srchResults = searchableService.search(query)
			render(view: "search",
				   model: [postadInstanceList: srchResults.results,
						 postadInstanceTotal:srchResults.total])
		}else{
			redirect(action: "index")
		}
	}
}
