package it.libreria.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/about-us")
public interface AboutUsController {

	
	
	
	//http://localhost:8080/libreria/about-us
	@GetMapping()
	public String getPage(Model model) {
		return "about-us";
	}
	
}
