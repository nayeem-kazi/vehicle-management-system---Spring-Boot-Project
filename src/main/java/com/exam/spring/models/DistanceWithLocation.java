package com.exam.spring.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class DistanceWithLocation {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer fwlId;
	Integer fromDistrict;
	Integer toDistrict;
	Double distance;
	public Integer getFwlId() {
		return fwlId;
	}
	public void setFwlId(Integer fwlId) {
		this.fwlId = fwlId;
	}
	
	public Integer getFromDistrict() {
		return fromDistrict;
	}
	public void setFromDistrict(Integer fromDistrict) {
		this.fromDistrict = fromDistrict;
	}
	public Integer getToDistrict() {
		return toDistrict;
	}
	public void setToDistrict(Integer toDistrict) {
		this.toDistrict = toDistrict;
	}
	public Double getDistance() {
		return distance;
	}
	public void setDistance(Double distance) {
		this.distance = distance;
	}
	
	
}
