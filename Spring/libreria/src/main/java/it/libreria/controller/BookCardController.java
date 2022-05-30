package it.libreria.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.libreria.dao.BookDao;
import it.libreria.dao.CartDao;
import it.libreria.dao.UserDao;
import it.libreria.model.Book;
import it.libreria.model.Cart;

@Controller
@RequestMapping("/book-card")
public class BookCardController {
	@Autowired
	BookDao bookDao;
	@Autowired
	CartDao cartDao;
	@Autowired
	UserDao userDao;

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

	@GetMapping("/addArticle")
	public String addArticleToCart(Model model, HttpServletRequest request, HttpSession session) {
		if (request.getParameter("idProd") == null || request.getParameter("cover") == null)
			return "redirect:/home";
		
		int idProd = Integer.parseInt(request.getParameter("idProd"));
		String cover = request.getParameter("cover");

		Cart cart = new Cart();
		Book book = bookDao.findById(idProd).get();
		cart.setUser(userDao.findByUsername((String) session.getAttribute("username")));
		cart.setBook(book);
		cart.setPrice(cover.contains("flex") ? book.getPriceFlexibleCover() : book.getPriceHardCover());
		cart.setCover(cover);
		cart.setQuantity(1);
		cartDao.save(cart);
		
		session.setAttribute("cartNum", cartDao.countByUser(cart.getUser()));
		
		return "redirect:/home";
	}

}
