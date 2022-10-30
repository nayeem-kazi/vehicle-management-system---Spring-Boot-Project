package com.exam.spring.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import com.exam.spring.models.Vehicles;

@Repository
public interface VehiclesRepository extends JpaRepository<Vehicles, Integer> {
	@Query("select u From Vehicles u WHERE u.vNo =:n ")
	public List<Vehicles> getVehicleByVno(@Param("n")String vNo);
}
