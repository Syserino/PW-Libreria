package it.libreria.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/about-us")
public class AboutUsController {

	@GetMapping
	public String getPage(Model model, HttpServletRequest request) {
		int sel = Integer.parseInt(request.getParameter("sel"));
		model.addAttribute("sel", sel);
		model.addAttribute("isAboutUs", true);
		return "about-us";
	}

}
