package com.exam.spring.comtrollers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exam.spring.services.VehiclesService;

@Controller
public class DashboardControler {
	@Autowired
	VehiclesService vs;
	
	@RequestMapping("/home")
	private String home() {
		long totalVehicle =vs.countVehicle();
		return "home";
	}
}
