package it.libreria.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.libreria.dao.UserDao;

@Controller
@RequestMapping("/admin-panel")
public class AdminPanelController {
	@Autowired
	UserDao userDao;
	
	@GetMapping()
	public String getPage(Model model) {
		model.addAttribute("users", userDao.findAll());
		return "admin-panel";
	}
}
