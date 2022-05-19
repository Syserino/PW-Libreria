package it.libreria.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.libreria.model.User;

@Controller
@RequestMapping("/register")
public class RegisterController {
	
	@GetMapping()
	public String getPage(Model model)
	{
		//model.addAttribute(new User());
		
		return "register";
	}
}
