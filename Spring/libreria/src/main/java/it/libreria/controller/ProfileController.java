package it.libreria.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.libreria.dao.UserDao;

@Controller
@RequestMapping("/profile")
public class ProfileController {
	@Autowired
	UserDao userDao;

	@GetMapping
	public String getPage(Model model, HttpSession session) {
		model.addAttribute("user", session.getAttribute("user"));
		return "profile";
	}
}