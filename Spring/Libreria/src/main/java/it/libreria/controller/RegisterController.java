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
import it.libreria.dao.AnagraphicDao;
import it.libreria.dao.UserDao;

@Controller
@RequestMapping("/register")
public class RegisterController {
	private boolean errUsername = false;

	@Autowired
	UserDao userDao;
	@Autowired
	AnagraphicDao anagraphicDao;

	@GetMapping()
	public String getPage(Model model) {
		model.addAttribute("login", new User());
		model.addAttribute("formState", errUsername);
		model.addAttribute("user", new User());

		return "register";
	}

	@PostMapping
	public String customerCreate(@Valid @ModelAttribute("user") User user, BindingResult result) {
		if (result.hasErrors())
			return "register";
		// se stai provando a registrarti con un nome utente già usato
		errUsername = userDao.findByUsername(user.getUsername()) != null;

		if (!errUsername) {
			user.setPrivileges(1);
			userDao.save(user);
		}

		return "redirect:/";
	}

}
