package it.libreria.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.libreria.dao.BookDao;

// http://localhost:8080/libreria
@Controller
@RequestMapping(path = {"/", "/index", "/home"})
public class IndexController {
	@Autowired
	BookDao bookDao;
	
	@GetMapping
	public String getPage(Model model)
	{
		model.addAttribute("books", bookDao.findAll());
		return "index";
	}
}

