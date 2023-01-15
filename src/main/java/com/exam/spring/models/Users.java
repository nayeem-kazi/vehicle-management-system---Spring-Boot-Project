package com.exam.spring.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Users {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int uId;
	String userFullName;
	@Column(unique=true)
	String userUserName;
	String uPass;
	String uMobile;	
	String uEmail;	
	String uAddress;
	String uPhoto;
	public Users() {
		super();
	}
	public Users(int uId) {
		super();
		this.uId = uId;
	}

	public Users(String userFullName, String userUserName, String uPass, String uEmail) {
		super();
		this.userFullName = userFullName;
		this.userUserName = userUserName;
		this.uPass = uPass;
		this.uEmail = uEmail;
	}
	
	public Users(int uId, String userFullName, String userUserName, String uPass, String uEmail) {
		super();
		this.uId = uId;
		this.userFullName = userFullName;
		this.userUserName = userUserName;
		this.uPass = uPass;
		this.uEmail = uEmail;
	}
	
	public Users(int uId, String userFullName, String userUserName, String uPass, String uMobile, String uEmail,
			String uAddress, String uPhoto) {
		super();
		this.uId = uId;
		this.userFullName = userFullName;
		this.userUserName = userUserName;
		this.uPass = uPass;
		this.uMobile = uMobile;
		this.uEmail = uEmail;
		this.uAddress = uAddress;
		this.uPhoto = uPhoto;
	}
	public int getuId() {
		return uId;
	}
	public void setuId(int uId) {
		this.uId = uId;
	}
	public String getUserFullName() {
		return userFullName;
	}
	public void setUserFullName(String userFullName) {
		this.userFullName = userFullName;
	}
	public String getUserUserName() {
		return userUserName;
	}
	public void setUserUserName(String userUserName) {
		this.userUserName = userUserName;
	}
	public String getuPass() {
		return uPass;
	}
	public void setuPass(String uPass) {
		this.uPass = uPass;
	}
	public String getuMobile() {
		return uMobile;
	}
	public void setuMobile(String uMobile) {
		this.uMobile = uMobile;
	}
	public String getuEmail() {
		return uEmail;
	}
	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}
	public String getuAddress() {
		return uAddress;
	}
	public void setuAddress(String uAddress) {
		this.uAddress = uAddress;
	}
	public String getuPhoto() {
		return uPhoto;
	}
	public void setuPhoto(String uPhoto) {
		this.uPhoto = uPhoto;
	}
	
	
}
