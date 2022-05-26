package it.libreria.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.libreria.dao.BookDao;
import it.libreria.dao.CategoryDao;
import it.libreria.model.Book;
import it.libreria.model.User;
import it.libreria.service.BookService;

// http://localhost:8080/libreria
@Controller
@RequestMapping(path = {"/", "/index", "/home"})
public class IndexController {
	@Autowired
	BookDao bookDao;
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	BookService bookService;
	
	@GetMapping
	public String getPage(Model model, @RequestParam(name="text", required = false) String searchText)
	{
		String searchBy = "";
		
		if (searchText != null && !searchText.isEmpty()) {
			searchBy = searchText;
		}
		
		model.addAttribute("login", new User());
		model.addAttribute("isHome", true);
		model.addAttribute("books", getBooksFromTitle(searchBy));
		//if (searchType != null)
		//	model.addAttribute("books", searchType == "title" ? getBooksFromTitle(searchBy) : getBooksFromAuthor(searchBy));
		return "index";
	}
	
	private List<Book> getBooksFromTitle(String searchBy)
	{
		return bookService.getBooksFromTitle(searchBy);
	}
	private List<Book> getBooksFromAuthor(String searchBy)
	{
		return bookService.getBooksFromAuthor(searchBy);
	}

	

}

