package it.libreria.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "book_in_order")
public class BookInOrder implements Serializable {
	private static final long serialVersionUID = 6352225170378982136L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "order_id", length = 255, nullable = false)
	private Order order;

	@Column(name = "book_id", length = 255, nullable = false)
	private Book book;

	@Column(name = "quantity", length = 255, nullable = false)
	private int quantity;

	@Column(name = "price", length = 255, nullable = false)
	private double price;

	@Column(name = "cover", length = 255, nullable = false)
	private String cover;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}
	
}
