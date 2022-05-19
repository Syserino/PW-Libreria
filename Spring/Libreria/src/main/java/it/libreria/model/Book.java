package it.libreria.model;

import java.io.Serializable;

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
	
	@Column(name = "price", length = 255, nullable = false)
	private Double price;

	
//	@ManyToOne(cascade = CascadeType.ALL)
//    @JoinColumn(name="category_id", referencedColumnName = "id")
	@Column(name = "category_id", length = 255, nullable = false)
    private int category;
	
	

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
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

	
	
	
}