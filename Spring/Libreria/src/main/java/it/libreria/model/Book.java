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
public class Book implements Serializable {
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

	@Column(name = "price_flexiblecover", nullable = false)
	private double priceFlexibleCover;

	@Column(name = "price_hardcover", nullable = false)
	private double priceHardCover;

	@Column(name = "e_book", nullable = false)
	private double eBook;
	
	@Column(name = "code_ebook", nullable = false)
	private String codeEBook;
	
	@Column(name = "public_year", nullable = false)
	private int publicYear;

	@Column(name = "quantity", nullable = false)
	private int quantity;
	
	@Column(name = "short_desch", length = 255,nullable = false)
	private String shortDesch;
	
	@Column(name = "isbn", length = 50, nullable = false)
	private String isbn;
	
	@ManyToOne(cascade = CascadeType.DETACH)
	@JoinColumn(name = "category_id", referencedColumnName = "id")
	private Category category;

	
	public String getCodeEBook() {
		return codeEBook;
	}

	public void setCodeEBook(String codeEBook) {
		this.codeEBook = codeEBook;
	}

	public String getShortDesch() {
		return shortDesch;
	}

	public void setShortDesch(String shortDesch) {
		this.shortDesch = shortDesch;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}


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

	public double getPriceFlexibleCover() {
		return priceFlexibleCover;
	}

	public void setPriceFlexibleCover(double priceFlexibleCover) {
		this.priceFlexibleCover = priceFlexibleCover;
	}

	public double getPriceHardCover() {
		return priceHardCover;
	}

	public void setPriceHardCover(double priceHardCover) {
		this.priceHardCover = priceHardCover;
	}

	public int getPublicYear() {
		return publicYear;
	}

	public void setPublicYear(int publicYear) {
		this.publicYear = publicYear;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double geteBook() {
		return eBook;
	}

	public void seteBook(double eBook) {
		this.eBook = eBook;
	}
}