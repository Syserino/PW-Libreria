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

import it.libreria.dao.BookDao;
import it.libreria.dao.CategoryDao;
import it.libreria.model.Book;
import it.libreria.model.Category;

@Controller
@RequestMapping("/book-form")
public class BookFormController {
	@Autowired
	BookDao bookDao;
	@Autowired
	CategoryDao categoryDao;
	
	@GetMapping()
	public String getPage(Model model) {
		model.addAttribute("book", new Book());
		
		return "book-form";
	}

	@PostMapping
	public String registraLibro(Model model, @Valid @ModelAttribute("book") Book book, BindingResult result) {
		if (result.hasErrors())
			return "book-form";
		
		book.setCategory(categoryDao.findById(1).get());
		bookDao.save(book);
		
		return "book-form";
	}
}
