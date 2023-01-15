package com.exam.spring.repositories;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.exam.spring.models.DistanceWithLocation;

@Repository
public interface DistanceWithLocationRepository extends JpaRepository<DistanceWithLocation, Integer>{

	@Query("SELECT v.distance FROM DistanceWithLocation v Where fromDistrict=(SELECT l FROM Locations l Where district=?1) and to_district = (SELECT l.lId FROM Locations l Where district=?2)")
	public Double getDistance( String fromDistrict, String toDistrict);
}
