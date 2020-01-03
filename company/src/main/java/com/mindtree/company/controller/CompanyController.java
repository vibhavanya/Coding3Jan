package com.mindtree.company.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mindtree.company.entity.Employee;
import com.mindtree.company.entity.Project;
import com.mindtree.company.exception.ControllerException;
import com.mindtree.company.service.CompanyService;

@Controller
public class CompanyController {
	
	private static int eid;
	
	@Autowired
	CompanyService companyservice;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String menu() {
		
		return "menu";
	}
	@RequestMapping("menu")
	public String menuFromLogo() {
		return "menu";
	}
	@RequestMapping("/signup")
	public String signUp()
	{
		return "signup";
	}
	@RequestMapping("/signin")
	public String signIn()
	{
		return "signin";
	}
	@RequestMapping("/adminpage")
	public String adminPage()
	{
		return "adminpage";
	}
	@RequestMapping("/userpage")
	public String userPage()
	{
		return "userpage";
	}
	@RequestMapping("/addproject")
	public String addProject() {
		return "addproject";
	}
	@RequestMapping("/getbyuserid")
	public String getUserById() {
		
		return "getbyuserid";
	}
	@RequestMapping("/changepassword")
	public String updatePassword() {
		
		return "changepassword";
	}
	@PostMapping("/addemployee")
	public String addEmployee(Employee employee, @RequestParam(value = "projectId", defaultValue = "0") int projectId) throws ControllerException {
		companyservice.insertEmployee(employee, projectId );
//		System.out.println(employee.toString());
		return "menu";
	}
	@PostMapping("/employee")
	public String userOrAdmin(@RequestParam int employeeId, @RequestParam String password ) throws ControllerException {
		String result;	
		 eid=employeeId;
		result=companyservice.getIntoSignInPage(employeeId,password);
		return result;
		
	}
	@PostMapping("/addproject")
	public String addProject(Project project) 
	{
		companyservice.addProject(project);
		return "menu";
		
	}
	@GetMapping("/getallproject")
	public String getProjects(Model model) {
		List<Project>projects=new ArrayList<Project>();
		projects=companyservice.getProjects();
		model.addAttribute("projects", projects);
		return "getallproject";
		
	}
	@GetMapping("/getallusers")
	public String getAllUser(Model model ) {
		
		List<Employee> employees=companyservice.getAllUser();
		model.addAttribute("employees", employees);
		return "getallusers";
		
	}
	
	@GetMapping("/getuserbyid")
	public String getUserById(Model model, @RequestParam int employeeId ) throws ControllerException {
//		System.out.println(employeeId);
		List<Employee> employees=companyservice.getUserById(employeeId);
		model.addAttribute("employees", employees);
		return "getallusers";
	
}
	@GetMapping("/viewallteammembers")
	public String viewAllTeamMembers(Model model) {
		System.out.println(eid);
		List<Employee> employees=companyservice.viewAllTeamMembers(eid);
		model.addAttribute("employees", employees);
		return "getallusers";
	
}
	@PostMapping("/changepassword")
	public String changePassword(@RequestParam String password, @RequestParam String password2) throws ControllerException {
		System.out.println(password);
		System.out.println(password2);
		String result=companyservice.changePassword(password,password2,eid);
		return result;
		
	}
	
}
