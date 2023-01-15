package com.exam.spring.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.spring.models.Users;
import com.exam.spring.repositories.UsersRepository;

@Service
public class UsersService {
	@Autowired
	UsersRepository ur;
	
	public void newRegister(Users u) {
		ur.save(u);
	}
	public void deleteRegister(Users u) {
		ur.delete(u);
	}
	public List<Users> findAllUsers(Users u) {
		return ur.findAll();
	}
	public Users findUsersById(int uid) {
		return ur.findById(uid).get();
	}
	public List<Users> getUserByUserNamePass(String user, String pass){
		return ur.getUserByName(user, pass);
	}
}
