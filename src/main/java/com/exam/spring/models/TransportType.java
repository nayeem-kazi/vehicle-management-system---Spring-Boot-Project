package com.exam.spring.models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity

public class TransportType {
	@Id
	int tbId;
	String type;
	String details;
	double baseFair;
	double perKmFair;
	double otherCost;
	public int getTbId() {
		return tbId;
	}
	public void setTbId(int tbId) {
		this.tbId = tbId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public double getBaseFair() {
		return baseFair;
	}
	public void setBaseFair(double baseFair) {
		this.baseFair = baseFair;
	}
	public double getPerKmFair() {
		return perKmFair;
	}
	public void setPerKmFair(double perKmFair) {
		this.perKmFair = perKmFair;
	}
	public double getOtherCost() {
		return otherCost;
	}
	public void setOtherCost(double otherCost) {
		this.otherCost = otherCost;
	}
	
	
	
}
