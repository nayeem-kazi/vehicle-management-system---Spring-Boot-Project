package com.exam.spring.repositories;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.exam.spring.models.Employee;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer>{
	@Query(value = "SELECT COUNT(*) FROM Employee", nativeQuery = true)
	public long getTotalEmployees();
	
	@Query(value="SELECT distinct(e_designation) FROM employee", nativeQuery = true)
	public List<String> getDesignation();
	
	@Query(value = "SELECT COUNT(*) FROM Employee WHERE e_designation='Driver'", nativeQuery = true)
	public long getTotalDriver();
	
	@Query(value = "SELECT COUNT(*) FROM Employee WHERE e_designation='Helper'", nativeQuery = true)
	public long getTotalHelper();
	
	@Query("SELECT MAX(e.eId) FROM Employee e")
	public long getLastEmpId();
}
