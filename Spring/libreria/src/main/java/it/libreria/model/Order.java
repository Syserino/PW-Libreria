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
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "order_list")
public class Order implements Serializable {
	private static final long serialVersionUID = -5482634261369670437L;
	public enum OrderStatus {
	    DA_SPEDIRE,
	    SPEDITO,
	    CONSEGNATO,
	    CANCELLATO
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_anagraphic")
	private Anagraphic anagraphic;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_book")
	private Book book;
 
    @Enumerated(EnumType.STRING)
    @Column(name = "status")
    private OrderStatus status;

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

	public OrderStatus getStatus() {
		return status;
	}

	public void setStatus(OrderStatus status) {
		this.status = status;
	}

    
    
    
}
