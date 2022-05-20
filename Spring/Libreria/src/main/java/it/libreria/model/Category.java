package it.libreria.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "books")
public class Category implements Serializable {

	private static final long serialVersionUID = -5482634261369670437L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "name", length = 255, nullable = false)
	private String name;
	
	@Column(name = "description", length = 255, nullable = false)
	private String description;
}
