package it.libreria.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.libreria.dao.BookDao;
import it.libreria.dao.UserDao;
import it.libreria.model.User;

@Controller
@RequestMapping("/checkout")
public class CheckoutController {
	@Autowired
	BookDao bookDao;
	@Autowired
	UserDao userDao;
		
	@SuppressWarnings("unchecked")
	@GetMapping()
	public String getPage(Model model, HttpSession session) {
		model.addAttribute("books", bookDao.findAllById((List<Integer>) session.getAttribute("cart")));
		model.addAttribute("cartnum", ((List<Integer>) session.getAttribute("cart")).size());
		User u = userDao.findByUsername((String) session.getAttribute("username"));
		model.addAttribute("user", u);

		return "checkout";
	}

}
