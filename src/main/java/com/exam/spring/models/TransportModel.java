package com.exam.spring.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class TransportModel {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int tmId;
	String model;
	int brand;
	int type;
	public int getTmId() {
		return tmId;
	}
	public void setTmId(int tmId) {
		this.tmId = tmId;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public int getBrand() {
		return brand;
	}
	public void setBrand(int brand) {
		this.brand = brand;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}	
}
