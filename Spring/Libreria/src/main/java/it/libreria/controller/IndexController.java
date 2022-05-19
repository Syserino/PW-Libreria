package it.libreria.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

// http://localhost:8080/libreria
@Controller
@RequestMapping(path = {"/", "/index", "/home"})
public class IndexController {

	@GetMapping
	public String getPage()
	{
		return "index";
	}
}

