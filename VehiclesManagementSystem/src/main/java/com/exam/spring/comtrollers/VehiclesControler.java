package com.exam.spring.comtrollers;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.spring.models.Vehicles;
import com.exam.spring.repositories.VehiclesRepository;
import com.exam.spring.services.VehiclesService;

@Controller
public class VehiclesControler {
	@Autowired
	VehiclesService vs;
	@Autowired
	VehiclesRepository vr;
	
	@PostMapping("/newVehicles")
	private String newUser(Vehicles v, Model m) {
		vs.addNewVehicles(v);
		allVehicle(m);
		return "all_vehicles";
	}
	
	@RequestMapping("/allVehicle")
	private String allVehicle(Model m) {
		List<Vehicles> list = vs.allVehicles(null);
		m.addAttribute("vl",list);
		return "all_vehicles";
	}
	
	@GetMapping("/vehicle")
	private String findVehicleById(@Param("id") Integer id, Model m) {
		Vehicles vehicle = vs.vehicleById(id);
		m.addAttribute("vcl", vehicle);
		return "edit_vehicle";
	}
	@GetMapping("/deleteVehicle")
	private String deleteVehicleById(@Param("id") Integer id,Model m) {
		Vehicles v = vs.vehicleById(id);
		vs.deleteVehicles(v);
		allVehicle(m);
		return "all_vehicles";
	}
	
	@RequestMapping("/search")
	public String Findbyname(@RequestParam String vNo,Model m) {
		m.addAttribute("vl",vr.getVehicleByVno(vNo));
		
	return "all_vehicles";
		
	}
}
