package kokokarlo.web;

import org.springframework.web.servlet.mvc.Controller;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import kokokarlo.service.ProjectManager;

import java.io.IOException;
//import springapp.service.ProductManager;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class ProjectController implements Controller{
	protected final Log logger = LogFactory.getLog(getClass());
	
	private ProjectManager projectManager;

	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		Map<String, Object> myModel = new HashMap<String, Object>();
		
		myModel.put("projects", this.projectManager.getListOfProjects());
		
		return new ModelAndView("main","model",myModel);
		
	}

	public void setProjectManager(ProjectManager projectManager) {
		this.projectManager = projectManager;
	}
	
}
