package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Repository.UserRepository;
import com.entity.UserEntity;

import jakarta.persistence.Id;

@Controller
public class UserController {
	
	@Autowired
	UserRepository userRepository;
	
	@GetMapping("/userlist")
	public String listUsers(Model model) {
		List<UserEntity> user = userRepository.findAll();
		model.addAttribute("user",user);
		return "UserList";
	}
	
	@GetMapping("/deleteuser")
	public String deleteUser(@RequestParam("userId") Integer userId) {
		userRepository.deleteById(userId);
		return "redirect:userlist";
	}
}
