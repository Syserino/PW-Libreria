package it.libreria.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.libreria.dao.BookDao;

@Controller
@RequestMapping("/book-card")
public class BookCardController {
	@Autowired
	BookDao bookDao;
	
	
	// http://localhost:8080/libreria/book-card
	@GetMapping()
	public String getPage(Model model, HttpServletRequest request) {
		int idProd = Integer.parseInt(request.getParameter("idProd"));
		model.addAttribute("book", bookDao.findById(idProd).get());
		model.addAttribute("isBookCard", true);
		return "book-card";
	}
}
