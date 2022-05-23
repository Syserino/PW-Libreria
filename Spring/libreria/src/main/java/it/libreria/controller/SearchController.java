package it.libreria.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.libreria.dao.BookDao;

@Controller
@RequestMapping("search")
public class SearchController {
	@Autowired
	BookDao bookDao;
	
	@GetMapping
	public String getPage(Model model, HttpServletRequest request) 
	{
		int idProd = Integer.parseInt(request.getParameter("idCategory"));
		model.addAttribute("books", bookDao.findAllByCategoryId(idProd));

		return "index";
	}
}
