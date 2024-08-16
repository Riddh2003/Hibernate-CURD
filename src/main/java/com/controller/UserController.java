package com.controller;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.Repository.UserRepository;
import com.entity.UserEntity;

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
	
	@GetMapping("/viewuser")
	public String viewuser(@RequestParam("userId") Integer userId,Model model) {
		Optional<UserEntity> user = userRepository.findById(userId);
		model.addAttribute("user",user.get());
		return "ViewUser";
	}
	@GetMapping("/edituser")
	public String editUser(@RequestParam("userId") Integer userId,Model model) {
		Optional<UserEntity> user = userRepository.findById(userId);
		model.addAttribute("user",user.get());
		return "EditUser";
	}
	
	@PostMapping("/updateuser")
	public String updateUser(UserEntity userEntity) {
		// userEntity.setRole("USER");
		// userRepository.save(userEntity);
		return "redirect:userlist";
	}
}
