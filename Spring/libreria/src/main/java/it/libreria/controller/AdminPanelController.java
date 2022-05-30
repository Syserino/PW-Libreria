package it.libreria.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
		model.addAttribute("login", new User());

		return "user-list";
	}

	@GetMapping("/user-edit")
	public String userEdit(Model model, HttpServletRequest request) {
		model.addAttribute("user", userDao.findById(Integer.parseInt(request.getParameter("id"))).get());
		model.addAttribute("login", new User());

		return "user-edit";
	}

	@GetMapping("/book-list")
	public String bookList(Model model) {
		model.addAttribute("books", bookDao.findAll());
		model.addAttribute("login", new User());

		return "book-list";
	}
	
	@GetMapping("/book-edit")
	public String bookEdit(Model model, @RequestParam(name="id", required=false) String id, HttpSession session, HttpServletRequest request) {
		boolean hasImage = false;

		try {
			String rootDir = session.getServletContext().getRealPath("/");
			String filePath = rootDir + "static\\images\\articles\\" + String.valueOf(id) + ".png";
			File file = new File(filePath);
			hasImage = file.exists();
		} catch (Exception e) {
			hasImage = false;
		}

		if (request.getParameter("id") == null)
		{
			model.addAttribute(new Book());
			model.addAttribute("bookId", 0);
		}
		else
		{
			model.addAttribute("book", bookDao.findById(Integer.parseInt(request.getParameter("id"))).get());
			model.addAttribute("bookId", String.valueOf(id));

		}
		model.addAttribute("hasImage", hasImage);
		
		model.addAttribute("login", new User());

		return "book-edit";
	}


	@PostMapping("/upload")
	public String imageUpload(@RequestParam("image") MultipartFile image, @RequestParam("fileName") String fileName,
			HttpSession session) {
		if (image != null && !image.isEmpty()) {
			String rootDir = session.getServletContext().getRealPath("/");
			String filePath = rootDir + "static\\images\\articles\\" + fileName + ".png";
			try {
				image.transferTo(new File(filePath));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "redirect:/admin-panel/book-edit?id=" + Integer.parseInt(fileName);
	}


	@PostMapping("/book-edit")
	public String registraLibro(Model model, @Valid @ModelAttribute("book") Book book,
			BindingResult result) {
		if (result.hasErrors())
			return "book-edit";
		model.addAttribute("login", new User());

		book.setCategory(categoryDao.findById(book.getCategory().getId()).get());
		bookDao.save(book);

		return "redirect:/admin-panel/book-list";
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

	@GetMapping("/order-remove")
	public String orderRemove(Model model, HttpServletRequest request) {
		if (request.getParameter("id") != null)
			orderDao.delete(orderDao.findById(Integer.parseInt(request.getParameter("id"))).get());

		return "redirect:/admin-panel/order-list";
	}

	@GetMapping("/order-list")
	public String orderList(Model model) {
		model.addAttribute("orders", orderDao.findAll());

		return "order-list";
	}
}
