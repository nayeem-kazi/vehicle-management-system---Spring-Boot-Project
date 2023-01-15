package com.exam.spring.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.exam.spring.models.Booking;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Integer>{
	@Query("select b From Booking b WHERE b.clientName =?1")
	public List<Booking> getBookingByName(String clientName);
}
