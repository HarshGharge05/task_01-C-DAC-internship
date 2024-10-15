package com.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.entity.User;
import com.springmvc.service.UserService;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;
	
	//========================updating user details========================
	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public String updateUser(@ModelAttribute User user) {
		// Update the user details in the database
		userService.updateUser(user);
		
		// Redirect to the user list after updating
		return "redirect:/userList";
	}
	
	//========================getting editing page and user========================
	@RequestMapping("/editPage")
	public String editUser(@RequestParam("id") int id, Model m) {
		
		// Get user details from the service by ID
		User user = userService.getUserById(id);
		
		// Add the user object to the model to prepopulate the form
		m.addAttribute("user", user);
		
		return "edit";
	}
	
	//========================deleting a user========================
	@RequestMapping(value = "/deleteUser", method = RequestMethod.POST)
	public String deleteUser(@RequestParam("id") int id) {
		
		userService.deleteUserById(id);
		
		return "redirect:/userList";
	}

	//========================getting list of users========================
	@RequestMapping("/userList")
	public String home(@ModelAttribute User user, Model m) {

		List<User> userList = userService.getUsers();

		m.addAttribute("userList", userList);

		System.out.println(userList);

		return "home";
	}

	//========================register page========================
	@RequestMapping("/register")
	public String register() {
		return "register";
	}

	//========================login page========================
	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	//========================creating/registering the user========================
	@RequestMapping(path = "/createUser" , method = RequestMethod.POST )
	public String registerUser(@ModelAttribute User user, Model m) {
		System.out.println(user);

		userService.registerUser(user);

		m.addAttribute("msg", "Registered Successfully, Login Now...");

		return "login";
	}

	//========================Login a user========================
	@RequestMapping(path = "/getUser", method = RequestMethod.GET)
	public String loginUser(@ModelAttribute  User user) {

		userService.loginUser(user);
		if(user.getEmail().equals(user.getEmail()) && user.getPassword().equals(user.getPassword()) ) {
			return "redirect:/userList";
		}
		return "login";
	}

}
