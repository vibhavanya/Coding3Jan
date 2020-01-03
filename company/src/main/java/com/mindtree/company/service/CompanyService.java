package com.mindtree.company.service;

import java.util.List;

import com.mindtree.company.entity.Employee;
import com.mindtree.company.entity.Project;
import com.mindtree.company.exception.ControllerException;

public interface CompanyService {

	public void insertEmployee(Employee employee, int projectId ) throws ControllerException;

	public String getIntoSignInPage(int employeeId, String password) throws ControllerException;

	public void addProject(Project project);

	public List<Project> getProjects();

	public List<Employee> getAllUser();

	public List<Employee> getUserById(int employeeId) throws ControllerException;

	public List<Employee> viewAllTeamMembers(int eid);

	public String changePassword(String password, String password2, int eid) throws ControllerException;

}
