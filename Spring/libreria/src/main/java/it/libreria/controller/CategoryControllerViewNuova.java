package it.libreria.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.libreria.dao.CategoryDao;

@Controller
@RequestMapping("category-view")
public class CategoryControllerViewNuova {
	@Autowired
	CategoryDao categoryDao;

	@GetMapping
	public String getPage(Model model, HttpServletRequest request) {
		model.addAttribute("category", categoryDao.findAll());

		return "category_view";
	}

}
