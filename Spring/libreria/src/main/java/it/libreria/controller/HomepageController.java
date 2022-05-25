package it.libreria.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/homepage")
public class HomepageController {
	
@GetMapping
public String getPage(Model model, HttpServletRequest request) {
	
	//DA COMPLETARE
	
	return "homepage";
}
}
