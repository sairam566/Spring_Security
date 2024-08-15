package com.tsr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginHandler {

	@GetMapping("/login.htm")
	public String login() {
		return "loginform";
	}

	@GetMapping("/logout.htm")
	public String logout() {
		return "logoutform";
	}
}
