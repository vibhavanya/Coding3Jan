package com.mindtree.company.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Employee {
	@Id
	private int employeeId;
	
	private String employeeName;
	private String dateOfJoining;
	private String email;
	private String role;
	private String password;
	
	@ManyToOne
	private Project project;

	public Employee(int employeeId, String employeeName, String dateOfJoining, String email, String role,
			String password, Project project) {
		super();
		this.employeeId = employeeId;
		this.employeeName = employeeName;
		this.dateOfJoining = dateOfJoining;
		this.email = email;
		this.role = role;
		this.password = password;
		this.project = project;
	}

	public Employee() {
		super();
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public String getEmployeeName() {
		return employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	public String getDateOfJoining() {
		return dateOfJoining;
	}

	public void setDateOfJoining(String dateOfJoining) {
		this.dateOfJoining = dateOfJoining;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	@Override
	public String toString() {
		return "Employee [employeeId=" + employeeId + ", employeeName=" + employeeName + ", dateOfJoining="
				+ dateOfJoining + ", email=" + email + ", role=" + role + ", password=" + password + ", project="
				+ project + "]";
	} 
	

}
