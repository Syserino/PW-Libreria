package it.libreria.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/book-card")
public class BookCardController {
	// http://localhost:8080/libreria/book-card
	@GetMapping()
	public String getPage(Model model) {
		return "book-card";
	}
}
