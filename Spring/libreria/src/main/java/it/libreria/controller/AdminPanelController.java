package it.libreria.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.libreria.dao.BookDao;
import it.libreria.dao.UserDao;

@Controller
@RequestMapping("/admin-panel")
public class AdminPanelController {
	@Autowired
	UserDao userDao;
	@Autowired
	BookDao bookDao;

	@GetMapping()
	public String getPage(Model model) {
		model.addAttribute("users", userDao.findAll());
		return "admin-panel";
	}

	@GetMapping("/user-list")
	public String userList(Model model) {
		model.addAttribute("books", bookDao.findAll());

		return "user-list";
	}
	
	@GetMapping("/user-edit")
	public String userEdit(Model model, HttpServletRequest request) {
		model.addAttribute("user", userDao.findById(Integer.parseInt(request.getParameter("id"))).get());

		return "user-edit";
	}

	@GetMapping("/book-list")
	public String bookList(Model model) {
		model.addAttribute("books", bookDao.findAll());

		return "book-list";
	}

	@GetMapping("/book-edit")
	public String bookEdit(Model model, HttpServletRequest request) {
		model.addAttribute("book", bookDao.findById(Integer.parseInt(request.getParameter("id"))).get());

		return "book-edit";
	}

}
