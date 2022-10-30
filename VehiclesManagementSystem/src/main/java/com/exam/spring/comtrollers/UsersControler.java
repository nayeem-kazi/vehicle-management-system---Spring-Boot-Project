package com.exam.spring.comtrollers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.exam.spring.models.Users;
import com.exam.spring.services.UsersService;

@Controller
public class UsersControler {
	@Autowired
	UsersService us;
	
	@PostMapping("/newuser")
	public String newUser(Users u) {
		us.newRegister(u);
		return "login";
	}
	
}
