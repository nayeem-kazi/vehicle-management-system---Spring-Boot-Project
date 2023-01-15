package com.exam.spring.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.spring.models.Employee;
import com.exam.spring.repositories.EmployeeRepository;

@Service
public class EmployeeService {
	@Autowired
	EmployeeRepository er;
	
	public void newEmployee(Employee e) {
		er.save(e);
	}
	public void deleteEmployee(Employee e) {
		er.delete(e);
	}
	public List<Employee> findAllEmployee(Employee e) {
		return er.findAll();
	}
	public List<Employee> findAllEmployeeSet() {
		return er.findAll();
	}
	public Employee findEmployeeById(int uid) {
		return er.findById(uid).get();
	}
	public long getTotalEmployee(){
		return er.getTotalEmployees();
	}
	
	public long getTotalDriver(){
		return er.getTotalDriver();
	}
	
	public long getTotalHelper(){
		return er.getTotalHelper();
	}
	
	public List<String> getDesignation(){
		return er.getDesignation();
	}
	
	public long getLastEmpId() {
		return er.getLastEmpId();
	}
}
