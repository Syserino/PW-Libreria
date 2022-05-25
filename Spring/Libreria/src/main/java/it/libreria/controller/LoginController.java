package it.libreria.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.libreria.dao.UserDao;
import it.libreria.model.User;


@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired
	private UserDao userDao;

	@GetMapping
	public String getPage(Model model, HttpSession session) {
		model.addAttribute("login", new User());
		model.addAttribute("isLoginPage", true);
		
		return "login";
	}

	@PostMapping
	public String userCheckData(@Valid @ModelAttribute("login") User user, BindingResult result,
			HttpSession session) {
		if (result.hasErrors())
			return "login";

		// login con successo = 1; dati errati -1
		User u = userDao.findByUsername(user.getUsername());
		
		if (u != null && u.getPassword().equals(user.getPassword())) {
			session.setAttribute("loginSuccess", true);
			session.setAttribute("username", user.getUsername());
			
			if (u.getPrivileges() == 1)
				session.setAttribute("isAdmin", true);
		}

		return "redirect:/home";
	}

}
