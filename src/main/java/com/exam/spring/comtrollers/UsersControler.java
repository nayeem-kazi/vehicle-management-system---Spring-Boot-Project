package com.exam.spring.comtrollers;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.spring.models.Users;
import com.exam.spring.services.UsersService;
import com.exam.spring.services.VehiclesService;

@Controller
public class UsersControler {

	
	@Autowired
	UsersService us;
	@Autowired
	VehiclesService vs;
	
	@PostMapping("/newuser")
	public String newUser(Users u) {
		us.newRegister(u);
		return "login";
	}
	@RequestMapping("/check")
	public String userCheck(@RequestParam String userUserName, @RequestParam String uPass, Model m) {
		List<Users> list = us.getUserByUserNamePass(userUserName, uPass);

		String ret = "";
		if (list.isEmpty()) {
			ret="login";
		} else {
			vs.dashboard(m);
			ret="home";
		}
		return ret;
		
	}
	
}
