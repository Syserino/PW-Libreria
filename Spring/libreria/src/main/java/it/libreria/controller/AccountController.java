package it.libreria.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
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
import it.libreria.dao.OrderDao;
import it.libreria.dao.UserDao;
import it.libreria.model.User;

@Controller
@RequestMapping("/account")
public class AccountController {
	@Autowired
	BookDao bookDao;
	@Autowired
	UserDao userDao;
	@Autowired
	OrderDao orderDao;

	@GetMapping
	public String getPage() {
		return "redirect:/home";
	}

	@GetMapping("/login")
	public String login(Model model, HttpSession session) {
		return "login";
	}

	@PostMapping("/login")
	public String userCheckData(@Valid @ModelAttribute("login") User user, BindingResult result, HttpSession session) {
		if (result.hasErrors())
			return "login";

		// login con successo = 1; dati errati -1
		User u = userDao.findByUsername(user.getUsername());

		if (u != null && u.getPassword().equals(user.getPassword())) {
			session.setAttribute("loginSuccess", true);
			session.setAttribute("username", user.getUsername());

			if (u.getPrivileges() == 1)
				session.setAttribute("isAdmin", true);
		}

		return "redirect:/home";
	}

	@GetMapping("/order-history")
	public String orderHistory(Model model, HttpSession session) {
		if (session.getAttribute("loginSuccess") == null)
			return "redirect:/home";

		model.addAttribute("orders", orderDao.findAll());
		return "order-history";
	}

	@SuppressWarnings("unchecked")
	@GetMapping("/checkout")
	public String checkout(Model model, HttpSession session) {
		if (session.getAttribute("loginSuccess") == null)
			return "redirect:/register";

		if (session.getAttribute("cart") != null) {
			model.addAttribute("books", bookDao.findAllById((List<Integer>) session.getAttribute("cart")));
			model.addAttribute("cartnum", ((List<Integer>) session.getAttribute("cart")).size());
		}
		if (session.getAttribute("username") != null) {
			User u = userDao.findByUsername((String) session.getAttribute("username"));
			model.addAttribute("user", u);
		} else 
			model.addAttribute("user", new User());


		return "checkout";
	}

	@GetMapping("/profile")
	public String profile(Model model, HttpSession session) {
		if (session.getAttribute("loginSuccess") == null)
			return "redirect:/home";

		model.addAttribute("login", new User());

		User u = userDao.findByUsername((String) session.getAttribute("username"));

		model.addAttribute("user", u);
		return "profile";
	}

	@GetMapping("/logout")
	public String getPage(Model model, HttpSession session) {
		session.removeAttribute("loginSuccess");
		session.removeAttribute("isAdmin");
		session.removeAttribute("username");
		return "redirect:/home";
	}

}
