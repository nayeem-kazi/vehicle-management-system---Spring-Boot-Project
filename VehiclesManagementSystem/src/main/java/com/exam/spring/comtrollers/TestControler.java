package com.exam.spring.comtrollers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exam.spring.models.Vehicles;
import com.exam.spring.services.VehiclesService;

@Controller
public class TestControler {
	@Autowired
	VehiclesService vs;
	
	@RequestMapping("/test")
	private String test(Model m) {
		testQ(m);
		return "query_test";
	}
	@RequestMapping("/testquery")
	private String testQ(Model m) {
		List<Vehicles> list = vs.allVehicles(null); 
		m.addAttribute("demo", list);
		return "query_test";
	}
}
