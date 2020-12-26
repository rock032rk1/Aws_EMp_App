package com.employee.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employee.app.dao.EmployeeDao;
import com.employee.app.dto.Employee;
@Service
public class EmployeeServiceImpl implements EmployeeService{

	@Autowired
	private EmployeeDao employeeDao;
	
	public int saveEmp(Employee e) {
		// TODO Auto-generated method stub
		return employeeDao.saveEmp(e);
	}

	public List<Employee> findAllEmp() {
		// TODO Auto-generated method stub
		return employeeDao.findAllEmp();
	}

}
