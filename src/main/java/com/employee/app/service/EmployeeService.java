package com.employee.app.service;

import java.util.List;

import com.employee.app.dto.Employee;

public interface EmployeeService {

	public int saveEmp(Employee e);
	public List<Employee> findAllEmp();
	
}
