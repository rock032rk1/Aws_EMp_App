package com.employee.app.dao;

import java.util.List;

import com.employee.app.dto.Employee;

public interface EmployeeDao {

	public int saveEmp(Employee e);
	public List<Employee> findAllEmp();
	
}
