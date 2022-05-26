package it.libreria.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	public String getPage(Model model, HttpSession session, HttpServletRequest request) {
		int idProd = Integer.parseInt(request.getParameter("idProd"));
		model.addAttribute("book", bookDao.findById(idProd).get());
		model.addAttribute("isBookCard", true);
		if (session.getAttribute("loginSuccess") != null)
			model.addAttribute("isLogged", true);
		

		return "book-card";
	}
	
	@SuppressWarnings("unchecked")
	@GetMapping("/addArticle")
	public String addArticleToCart(Model model, HttpServletRequest request, HttpSession session) {
		int idProd = Integer.parseInt(request.getParameter("idProd"));

		List<Integer> tmpList;

		if (session.getAttribute("cart") == null)
			tmpList = new ArrayList<Integer>();
		else
			tmpList = (List<Integer>) session.getAttribute("cart");

		tmpList.add(idProd);
		session.setAttribute("cart", tmpList);

		return "redirect:/home";
	}

}
