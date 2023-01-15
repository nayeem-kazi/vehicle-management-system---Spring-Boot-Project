package com.exam.spring.models;


import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Employee {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int eId;
	String eFirstName;
	String eLasttName;
	String eMobile;	
	String eEmail;	
	String eAddress;
	String ePhoto;
	Date eDOB;
	Date eJoiningDate;
	String eDesignation;
	String eBasicSelary;
	String eType;
	@Column(columnDefinition = "boolean default false")
	boolean eSts;
	public int geteId() {
		return eId;
	}
	public void seteId(int eId) {
		this.eId = eId;
	}
	public String geteFirstName() {
		return eFirstName;
	}
	public void seteFirstName(String eFirstName) {
		this.eFirstName = eFirstName;
	}
	public String geteLasttName() {
		return eLasttName;
	}
	public void seteLasttName(String eLasttName) {
		this.eLasttName = eLasttName;
	}
	public String geteMobile() {
		return eMobile;
	}
	public void seteMobile(String eMobile) {
		this.eMobile = eMobile;
	}
	public String geteEmail() {
		return eEmail;
	}
	public void seteEmail(String eEmail) {
		this.eEmail = eEmail;
	}
	public String geteAddress() {
		return eAddress;
	}
	public void seteAddress(String eAddress) {
		this.eAddress = eAddress;
	}
	public String getePhoto() {
		return ePhoto;
	}
	public void setePhoto(String ePhoto) {
		this.ePhoto = ePhoto;
	}
	public Date geteDOB() {
		return eDOB;
	}
	public void seteDOB(Date eDOB) {
		this.eDOB = eDOB;
	}
	public String geteDesognation() {
		return eDesignation;
	}
	public void seteDesognation(String eDesognation) {
		this.eDesignation = eDesognation;
	}
	public String geteBasicSelary() {
		return eBasicSelary;
	}
	public void seteBasicSelary(String eBasicSelary) {
		this.eBasicSelary = eBasicSelary;
	}
	public Date geteJoiningDate() {
		return eJoiningDate;
	}
	public void seteJoiningDate(Date eJoiningDate) {
		this.eJoiningDate = eJoiningDate;
	}
	public String geteDesignation() {
		return eDesignation;
	}
	public void seteDesignation(String eDesignation) {
		this.eDesignation = eDesignation;
	}
	public String geteType() {
		return eType;
	}
	public void seteType(String eType) {
		this.eType = eType;
	}
	public boolean geteSts() {
		return eSts;
	}
	public void seteSts(boolean eSts) {
		this.eSts = eSts;
	}
	
	
	
}
