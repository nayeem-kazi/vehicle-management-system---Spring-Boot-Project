package com.exam.spring.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Vehicles {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer vId;
	String type;
	String model;
	String capasity;
	@Column(unique = true)
	String vNo;
	String description;
	String vPhoto;
	String vBrand;
	String sts = "Available";
	
	
	public String getvBrand() {
		return vBrand;
	}
	public void setvBrand(String vBrand) {
		this.vBrand = vBrand;
	}
	
	public Integer getvId() {
		return vId;
	}
	public void setvId(Integer vId) {
		this.vId = vId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getCapasity() {
		return capasity;
	}
	public void setCapasity(String capasity) {
		this.capasity = capasity;
	}
	public String getvNo() {
		return vNo;
	}
	public void setvNo(String vNo) {
		this.vNo = vNo;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getvPhoto() {
		return vPhoto;
	}
	public void setvPhoto(String vPhoto) {
		this.vPhoto = vPhoto;
	}
	public String getSts() {
		return sts;
	}
	public void setSts(String sts) {
		this.sts = sts;
	}

	
	
}
