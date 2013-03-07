package kokokarlo.service;

import java.util.List;

import kokokarlo.domain.Project;

public interface ProjectManager {

	public List<Project> getListOfProjects();
	public void setListOfProjects(List<Project> listOfProject);
	public void addProject(Project project);
}
