package com.employee.app.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.employee.app.dto.Employee;
import com.employee.app.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;
	

	
	@GetMapping("/login")
	public String login() {
		
		
		return "login";
	}
	
	@GetMapping("/")
	public String loginPage() {
		
		return "registration";
	}
	
	@PostMapping("/empsave")
	public String empRegister(Employee ep,Model model) {
		
		employeeService.saveEmp(ep);
		
		List<Employee> elist=employeeService.findAllEmp();
		model.addAttribute("elist", elist);
		
		return "result";
	}
	
	@GetMapping("/regist")
	public String getRegistPage() {
		
		return "registration";
	}
	
}
