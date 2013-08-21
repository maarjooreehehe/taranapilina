package classifiedads

abstract class BaseController {

	def beforeInterceptor = this.&auth
	
	def auth() {
		if(!session.username) {
		def originalRequestParams = [controller:controllerName,action:actionName]
		originalRequestParams.putAll(params)
		session.originalRequestParams = originalRequestParams
		redirect(controller:'account',action:'login')
		return false
	}
	}
}