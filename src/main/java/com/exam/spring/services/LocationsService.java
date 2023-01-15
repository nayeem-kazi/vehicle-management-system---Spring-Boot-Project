package com.exam.spring.services;

import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.spring.models.Locations;
import com.exam.spring.repositories.LocationRepository;

@Service
public class LocationsService {
	@Autowired
	private LocationRepository lr;
	
	public void addNewLocation(Locations locations) {
		lr.save(locations);
	}

	public Locations updateLocationById(Integer id, Locations l) {
		Locations location = lr.findById(id).get();
		if (Objects.nonNull(l.getDistrict()) && !"".equalsIgnoreCase(l.getDistrict())) {
			location.setDistrict(l.getDistrict());
		}	
		return lr.save(l);
	}

	public void deleteLocation(Locations l) {
		lr.delete(l);
	}
	public List<Locations> getLocations() {
		return lr.findAll();
	}
	public Locations getLocation(Integer id) {
		return lr.findById(id).get();
	}
	
	public Integer getLastLocationId() {
		return lr.getLastLocationId();
	}
}
