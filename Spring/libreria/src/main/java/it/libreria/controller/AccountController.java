package it.libreria.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

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

import it.libreria.dao.AnagraphicDao;
import it.libreria.dao.BookDao;
import it.libreria.dao.BookInOrderDao;
import it.libreria.dao.CartDao;
import it.libreria.dao.OrderDao;
import it.libreria.dao.UserDao;
import it.libreria.model.Anagraphic;
import it.libreria.model.Book;
import it.libreria.model.BookInOrder;
import it.libreria.model.Cart;
import it.libreria.model.Order;
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
	@Autowired
	AnagraphicDao anagraphicDao;
	@Autowired
	CartDao cartDao;
	@Autowired
	BookInOrderDao bookInOrderDao;

	private boolean errLogin = false;

	@GetMapping
	public String getPage() {
		return "redirect:/home";
	}

	@GetMapping("/login")
	public String login(Model model, HttpSession session) {
		model.addAttribute("login", new User());
		model.addAttribute("errLogin", errLogin);
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
			session.setAttribute("cartNum", cartDao.countByUser(u));

			if (u.getPrivileges() == 1)
				session.setAttribute("isAdmin", true);
		} else {
			errLogin = true;
			return "redirect:/account/login";
		}

		return "redirect:/home";
	}

	@GetMapping("/order-history")
	public String orderHistory(Model model, HttpSession session, HttpServletRequest request) {
		if (session.getAttribute("loginSuccess") == null)
			return "redirect:/home";

		if (request.getParameter("admin") != null) {
			if (session.getAttribute("isAdmin") == null)
				return "redirect:/home";
			model.addAttribute("orders", orderDao.findAll());
			model.addAttribute("adminMode", true);
		} else if (session.getAttribute("username") != null)
			model.addAttribute("orders",
					orderDao.findAllByUser(userDao.findByUsername((String) session.getAttribute("username"))));
		else {
			model.addAttribute("orders", null);
		}
		return "order-history";
	}

	@GetMapping("/order-list")
	public String orderList(Model model, HttpSession session, HttpServletRequest request) {
		if (session.getAttribute("loginSuccess") == null)
			return "redirect:/home";

		List<BookInOrder> listOrder = (List<BookInOrder>) bookInOrderDao
				.findAllByOrder(orderDao.findById(Integer.parseInt(request.getParameter("id"))).get());

		model.addAttribute("orders", listOrder);
		model.addAttribute("totalPrice",
				orderDao.findById(Integer.parseInt(request.getParameter("id"))).get().getPrice());
		return "order-list";
	}

	@GetMapping("/checkout")
	public String checkout(Model model, HttpSession session) {
		if (session.getAttribute("loginSuccess") == null)
			return "redirect:/register";
		model.addAttribute("login", new User());

		List<Cart> cartList = cartDao.findAllByUser(userDao.findByUsername((String) session.getAttribute("username")));

		double total = 0;
		for (Cart c : cartList)
			total += c.getPrice();

		model.addAttribute("cart", cartList);
		model.addAttribute("sum", total);

		if (session.getAttribute("username") != null) {
			User u = userDao.findByUsername((String) session.getAttribute("username"));
			model.addAttribute("user", u);
		} else
			model.addAttribute("user", new User());

		return "checkout";
	}

	@PostMapping("/checkout")
	public String checkoutData(Model model, @Valid @ModelAttribute("user") User user, BindingResult result,
			HttpSession session) {
		List<Cart> order_list = cartDao
				.findAllByUser(userDao.findByUsername((String) session.getAttribute("username")));
		
		double total = 0;
		for (Cart c : order_list)
			total += c.getPrice();

		Order order;
		order = new Order();
		order.setUser(userDao.findByUsername((String) session.getAttribute("username")));
		order.setStatus("Da spedire");
		order.setStartDate(Date.valueOf(LocalDate.now()));
		order.setEnDate(Date.valueOf(LocalDate.now().plusDays(7)));
		order.setPrice(total);
		
		for (int i = 0; i < order_list.size(); i++) {
			orderDao.save(order);
		}

		BookInOrder tmpBookInOrder;
		for (Cart c : order_list) {
			tmpBookInOrder = new BookInOrder();
			tmpBookInOrder.setBook(c.getBook());
			tmpBookInOrder.setCover(c.getCover());
			tmpBookInOrder.setOrder(order);
			tmpBookInOrder.setPrice(c.getPrice());
			tmpBookInOrder.setQuantity(c.getQuantity());
			bookInOrderDao.save(tmpBookInOrder);
			cartDao.delete(c);

		}

		// pulisco
		session.removeAttribute("cart");
		session.removeAttribute("cartNum");

		return "redirect:/home";
	}

	@GetMapping("/profile")
	public String profile(Model model, HttpSession session, HttpServletRequest request) {
		if (session.getAttribute("loginSuccess") == null)
			return "redirect:/home";

		model.addAttribute("login", new User());
		model.addAttribute("username", (String) session.getAttribute("username"));
		
		if (request.getParameter("firstLogin") != null)
			model.addAttribute("firstLogin", true);

		Anagraphic a = userDao.findByUsername((String) session.getAttribute("username")).getAnagraphic();

		model.addAttribute("anagraphic", a);
		return "profile";
	}

	@PostMapping("/profile")
	public String updateProfile(Model model, @Valid @ModelAttribute("anagraphic") Anagraphic anagraphic,
			BindingResult result, HttpSession session) {
		if (result.hasErrors())
			return "profile";
		model.addAttribute("login", new User());

		Anagraphic a = userDao.findByUsername((String) session.getAttribute("username")).getAnagraphic();
		a.setName(anagraphic.getName());
		a.setSurname(anagraphic.getSurname());
		a.setGender(anagraphic.getGender());
		a.setStreet(anagraphic.getName());
		a.setCity(anagraphic.getCity());
		a.setCodiceFiscale(anagraphic.getCodiceFiscale());

		anagraphicDao.save(a);

		return "redirect:/account/profile";
	}

	@GetMapping("/logout")
	public String getPage(Model model, HttpSession session) {
		session.removeAttribute("loginSuccess");
		session.removeAttribute("isAdmin");
		session.removeAttribute("username");
		session.removeAttribute("cartNum");
		return "redirect:/home";
	}

}
