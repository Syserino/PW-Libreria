package it.libreria.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.libreria.model.User;
import it.libreria.dao.UserDao;

@Controller
@RequestMapping("/register")
public class RegisterController {
	@Autowired
	UserDao userDao;
	
	@GetMapping()
	public String getPage(Model model)
	{
		model.addAttribute(new User());
		
		return "register";
	}
	
	@PostMapping
	public String customerCreate(@Valid @ModelAttribute("user") User user, BindingResult result) {
		if (result.hasErrors())
			return "register";

		//user.setAnagraphic(anagraphic);

		userDao.save(user);

		return "redirect:/";
	}

}
