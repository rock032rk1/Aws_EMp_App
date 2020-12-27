package com.employee.app.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

	public Employee getEmp() {

		Employee e = new Employee(1, "Nobita", "nobita@gmail.com", "74000000", "Apple");

		return e;
	}

	@GetMapping("/")
	public String login() {

		return "login";
	}

	@PostMapping("/emplogin")
	public String loginEmp(HttpServletRequest req, Model model) {
		String email = req.getParameter("email");
		String pass = req.getParameter("password");

		Employee e = getEmp();

		if (e.getEmail().equalsIgnoreCase(email) && e.getPassword().equalsIgnoreCase(pass)) {

			model.addAttribute("emp", e);
			return "result";
		} else {
			return "login";
		}

	}

	@GetMapping("/signin")
	public String RegistPage() {

		return "registration";
	}

	@GetMapping("/logine")
	public String LogPage() {

		return "login";
	}

	@GetMapping("/logout")
	public String getLogoutPage(HttpServletRequest req) {

		HttpSession ses = req.getSession();
		ses.invalidate();

		return "login";
	}

}
