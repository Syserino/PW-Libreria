package it.libreria.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.libreria.dao.BookDao;
import it.libreria.dao.CategoryDao;
import it.libreria.model.User;

@Controller
@RequestMapping("category-list")
public class CategoryController {
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	BookDao bookDao;
	
	@GetMapping
	public String getPage(Model model, HttpServletRequest request) 
	{
		model.addAttribute("category", categoryDao.findAll());
		model.addAttribute("login", new User());

		return "category-list";
	}
	
	@GetMapping("/category")
	public String category(Model model, HttpServletRequest request) {
		if (request.getParameter("id") == null)
			return "redirect:/home";
		
		int id = Integer.parseInt(request.getParameter("id"));
		model.addAttribute("books", bookDao.findAllByCategoryId(id));

		return "category";
	}

}
