package com.exam.spring.comtrollers;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.exam.spring.services.EmployeeService;
import com.exam.spring.services.VehiclesService;

@Controller
public class MainControler {
	@Autowired
	EmployeeService es;
	@Autowired
	VehiclesService vs;
	
	@RequestMapping("/")
	private String login() {
		return "login";
	}
	@RequestMapping("/reports")
	private String reports() {
		return "report";
	}
	
	@RequestMapping("/registrationForm")
	private String registar() {
		return "registar";
	}
	@RequestMapping("/transports")
	private String transports() {
		return "transport_submenu";
	}
	@RequestMapping("/employees")
	private String employees() {
		return "employee_submenu";
	}
	@RequestMapping("/booking")
	private String booking() {
		return "booking_transport_submenu";
	}
	@RequestMapping("/setting")
	private String setting() {
		return "settings_submenu";
	}
	@RequestMapping("/home")
	private String home(Model m) {
		vs.dashboard(m);		
		return "home";
	}
	
	@RequestMapping("/profile")
	private String goToProfile() {
		return "profile";
	}

	@RequestMapping("/newEmployee")
	private String newEmployee(Model m) {
		List<String> designation = es.getDesignation();
		m.addAttribute("dg", designation);
		
		long newEid = es.getLastEmpId()+1;
		m.addAttribute("newEid", newEid);
		return "new_employee";
	}

	@RequestMapping("/result")
	private String result() {
		return "query_result";
	}
	

	
}
