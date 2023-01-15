package com.exam.spring.repositories;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.exam.spring.models.TransportType;

@Repository
public interface TransportTypeRepository extends JpaRepository<TransportType, Integer>{
	@Query("SELECT tType.baseFair FROM TransportType tType WHERE tType.type =?1")
	public Double getBaseFair(String type);
	
	@Query("SELECT tType.perKmFair FROM TransportType tType WHERE tType.type =?1")
	public Double getPerKmFair(String type);
	@Query("SELECT tType FROM TransportType tType WHERE tType.type =?1")
	public TransportType getTypeInfo(String type);
	
	@Query("SELECT MAX(tType.tbId) FROM TransportType tType")
	public int getLastTransportTypeId();
}
