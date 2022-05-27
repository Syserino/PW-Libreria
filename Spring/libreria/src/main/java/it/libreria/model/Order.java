package it.libreria.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "order_list")
public class Order implements Serializable {
	private static final long serialVersionUID = -5482634261369670437L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "id_anagraphic")
	private Anagraphic anagraphic;
	
	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "id_book")
	private Book book;
 
    @Column(name = "orderStatus")
    private String status;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Anagraphic getAnagraphic() {
		return anagraphic;
	}

	public void setAnagraphic(Anagraphic anagraphic) {
		this.anagraphic = anagraphic;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

    
    
    
}
