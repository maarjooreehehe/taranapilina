package kokokarlo.service;

import java.util.List;

import kokokarlo.domain.Project;

public class SimpleProjectManager implements ProjectManager {

	private List<Project> listOfProjects;
	//private 

	
	public List<Project> getListOfProjects() {
		return listOfProjects;
	}

	public void setListOfProjects(List<Project> listOfProjects) {
		this.listOfProjects = listOfProjects;
	}
	
	public void addProject(Project project) {
		listOfProjects.add(project);
	}
	
}
