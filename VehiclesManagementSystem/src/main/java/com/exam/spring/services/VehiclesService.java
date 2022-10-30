package com.exam.spring.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.spring.models.Vehicles;
import com.exam.spring.repositories.VehiclesRepository;

@Service
public class VehiclesService {
	@Autowired
	VehiclesRepository vr;
	public void addNewVehicles(Vehicles v) {
		vr.save(v);
	}
	public void updateNewVehicles(Vehicles v) {
		vr.save(v);
	}
	public void deleteVehicles(Vehicles v) {
		vr.delete(v);
	}
	public List<Vehicles> allVehicles(Vehicles v) {
		return vr.findAll();
	}
	public Vehicles vehicleById(int id) {
		return vr.findById(id).get();
	}
	
	public Long countVehicle() {
		return vr.count();
		
	}
	
}
