package com.exam.spring.repositories;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.exam.spring.models.Vehicles;

@Repository
public interface VehiclesRepository extends JpaRepository<Vehicles, Integer> {
	@Query("select v  From Vehicles v WHERE v.vNo =:n ")
	public List<Vehicles> getVehicleByVno(@Param("n") String vNo);

	@Query("select v.vId,v.type, v.model, v.capasity, v.vNo, v.sts, tt.details, tt.baseFair, tt.perKmFair, tt.otherCost From Vehicles v JOIN TransportType tt ON v.type = tt.type")
	public List<Object> getTransportInfo();

	@Query("select v From Vehicles v WHERE v.sts='Available' ")
	public List<Vehicles> getAvailableTransports();

	@Query("SELECT COUNT(v) FROM Vehicles v")
	public long getTotalTransport();

	@Query("SELECT COUNT(v) FROM Vehicles v WHERE v.sts='Hired'")
	public long getHiredTransport();

	@Query("SELECT COUNT(v) FROM Vehicles v WHERE v.sts='Available'")
	public long getAvailableTransport();

	@Query("SELECT MAX(v.vId) FROM Vehicles v")
	public long getLastTransportId();
}
