package com.exam.spring.comtrollers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.spring.models.Locations;
import com.exam.spring.services.LocationsService;
@Controller
public class LocationsControler {
	@Autowired
	LocationsService ls;
	@RequestMapping("/location")
	public String location(Model m) {
		List<Locations> locations = ls.getLocations();
		m.addAttribute("location", locations);
		m.addAttribute("lid", ls.getLastLocationId()+1);
		return "locations";
	}
	@RequestMapping("/newLocation")
	public String newLocation(@ModelAttribute Locations l, Model m) {
		ls.addNewLocation(l);
		List<Locations> locations = ls.getLocations();
		m.addAttribute("location", locations);
		m.addAttribute("lid", ls.getLastLocationId()+1);
		return "locations";
	}
	@RequestMapping("/locationById")
	public String location(@ModelAttribute Locations l,@RequestParam Integer id, Model m) {
		m.addAttribute("locationId", ls.getLocation(id));
		List<Locations> locations = ls.getLocations();
		m.addAttribute("location", locations);
		return "locations";
	}
	@RequestMapping("/deletelocation")
	public String delete(@RequestParam Integer id, Model m) {
		Locations l = ls.getLocation(id);
		ls.deleteLocation(l);
//		m.addAttribute("locationId", ls.getLocation(id));
		List<Locations> locations = ls.getLocations();
		m.addAttribute("location", locations);
		m.addAttribute("lid", ls.getLastLocationId()+1);
		return "locations";
	}
}
