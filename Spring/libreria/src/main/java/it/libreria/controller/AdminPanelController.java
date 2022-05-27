package it.libreria.controller;

import javax.servlet.http.HttpServletRequest;
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
import it.libreria.dao.CategoryDao;
import it.libreria.dao.OrderDao;
import it.libreria.dao.UserDao;
import it.libreria.model.Book;
import it.libreria.model.User;

@Controller
@RequestMapping("/admin-panel")
public class AdminPanelController {
	@Autowired
	UserDao userDao;
	@Autowired
	BookDao bookDao;
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	OrderDao orderDao;

	@GetMapping
	public String getPage(Model model) {
		model.addAttribute("users", userDao.findAll());
		model.addAttribute("login", new User());

		return "admin-panel";
	}

	@GetMapping("/user-list")
	public String userList(Model model) {
		model.addAttribute("users", userDao.findAll());

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
		if (request.getParameter("id") == null)
			model.addAttribute(new Book());
		else
			model.addAttribute("book", bookDao.findById(Integer.parseInt(request.getParameter("id"))).get());

		return "book-edit";
	}

	@PostMapping("/book-edit")
	public String registraLibro(Model model, @Valid @ModelAttribute("book") Book book, BindingResult result) {
		if (result.hasErrors())
			return "book-edit";

		book.setCategory(categoryDao.findById(book.getCategory().getId()).get());
		bookDao.save(book);

		return "book-edit";
	}

	@GetMapping("/user-remove")
	public String userRemove(Model model, HttpServletRequest request) {
		if (request.getParameter("id") != null)
			userDao.delete(userDao.findById(Integer.parseInt(request.getParameter("id"))).get());

		return "redirect:/admin-panel/user-list";
	}

	@GetMapping("/book-remove")
	public String bookRemove(Model model, HttpServletRequest request) {
		if (request.getParameter("id") != null)
			bookDao.delete(bookDao.findById(Integer.parseInt(request.getParameter("id"))).get());

		return "redirect:/admin-panel/book-list";
	}

	@GetMapping("/order-list")
	public String orderList(Model model) {
		model.addAttribute("orders", orderDao.findAll());

		return "order-list";
	}
}
