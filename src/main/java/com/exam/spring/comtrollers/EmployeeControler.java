package com.exam.spring.comtrollers;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exam.spring.models.Employee;
import com.exam.spring.services.EmployeeService;

@Controller
public class EmployeeControler {
	@Autowired
	EmployeeService es;
	
	@PostMapping("/newEmployee")
	public String newUser(Employee e , Model m) {
		es.newEmployee(e);
		List<Employee> list = es.findAllEmployee(null);
		m.addAttribute("el",list);
		

		return "all_employee";
	}
	
	@RequestMapping("/allEmployee")
	private String allEmployee(Model m) {
		List<Employee> list = es.findAllEmployee(null);
		m.addAttribute("el",list);
		return "all_employee";
	}
	@RequestMapping("/contacts")
	private String contacts(Model m) {
		allEmployee(m);
//		List<Employee> list = es.findAllEmployee(null);
//		m.addAttribute("el",list);
		return "contacts";
	}
	
	@GetMapping("/employee")
	private String findEmployeeById(@Param("id") Integer id, Model m) {
		Employee employee = es.findEmployeeById(id);
		m.addAttribute("el", employee);
		
		List<String> designation = es.getDesignation();
		m.addAttribute("dg", designation);
		
		return "edit_employee";
	}
	@GetMapping("/deleteEmployee")
	private String deleteEmployeeById(@Param("id") Integer id,Model m) {
		Employee employee = es.findEmployeeById(id);
		es.deleteEmployee(employee);
		allEmployee(m);
		return "all_employee";
	}
	@GetMapping("/employ")
	private String employ() {
		
		return "employ";
	}
	
//	@RequestMapping("/search")
//	public String Findbyname(@RequestParam String vNo,Model m) {
//		m.addAttribute("vl",vr.getVehicleByVno(vNo));
//		
//	return "all_vehicles";
//		
//	}
}
