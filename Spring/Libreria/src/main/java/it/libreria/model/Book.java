package it.libreria.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "books")
public class Book implements Serializable
{
	private static final long serialVersionUID = -4754455262120111333L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "title", length = 255, nullable = false)
	private String title;
	
	@Column(name = "author", length = 255, nullable = false)
	private String author;
	
	@Column(name = "description", length = 255, nullable = false)
	private String description;
	
	@Column(name = "price", nullable = false)
	private Double price;
	
	@Column(name = "public_year", nullable = false)
	private Date public_year;

	@Column(name = "quantity", nullable = false)
	private int quantity;
 	
	@ManyToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name="category_id", referencedColumnName = "id")
	private Category category;
	
	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Date getPublic_year() {
		return public_year;
	}

	public void setPublic_year(Date public_year) {
		this.public_year = public_year;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	
	
	
}