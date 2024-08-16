package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.Repository.UserRepository;
import com.entity.UserEntity;

@Controller
public class SessionController {
	
	@Autowired
	UserRepository userRepository;
	
	@GetMapping("/signup")
	public String signUp() {
		return "SignUp";
	}
	
	@PostMapping("/signup")
	public String insertUser(UserEntity userEntity) {
		userEntity.setRole("USER");
		userRepository.save(userEntity);
		return "redirect:signup";
	}
}

