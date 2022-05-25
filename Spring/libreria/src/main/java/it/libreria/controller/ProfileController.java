package it.libreria.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.libreria.dao.UserDao;
import it.libreria.model.User;

@Controller
@RequestMapping("/profile")
public class ProfileController {
	@Autowired
	UserDao userDao;

	@GetMapping
	public String getPage(Model model, HttpSession session) {
		User u = userDao.findByUsername((String) session.getAttribute("username"));

		model.addAttribute("user", u);
		return "profile";
	}
}