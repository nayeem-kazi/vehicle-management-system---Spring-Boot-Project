package com.exam.spring.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.exam.spring.models.Locations;

@Repository
public interface LocationRepository extends JpaRepository<Locations, Integer>{
	@Query("SELECT MAX(l.lId) FROM Locations l")
	public Integer getLastLocationId();
}
