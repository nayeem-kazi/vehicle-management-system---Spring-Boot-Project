package com.exam.spring.comtrollers;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainControler {
	
	@RequestMapping("/")
	private String login() {
		return "login";
	}
	
	@RequestMapping("/registrationForm")
	private String registar() {
		return "registar";
	}
	

	
	@RequestMapping("/profile")
	private String goToProfile() {
		return "profile";
	}
	@RequestMapping("/newVehicle")
	private String newVehicle() {
		return "new_vehicle";
	}
	@RequestMapping("/newEmployee")
	private String newEmployee() {
		return "new_employee";
	}

	@RequestMapping("/result")
	private String result() {
		return "query_result";
	}
	

	
}
