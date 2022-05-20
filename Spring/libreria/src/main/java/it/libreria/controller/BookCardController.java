package it.libreria.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/scheda-libro")
public class BookCardController {

	//http://localhost:8080/libreria/scheda-libro
	public String getPage(Model model) {
		return "scheda-libro";
	}
}
