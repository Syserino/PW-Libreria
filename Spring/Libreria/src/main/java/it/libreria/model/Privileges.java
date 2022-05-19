package it.libreria.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "privileges")
public class Privileges  implements Serializable
{
	private static final long serialVersionUID = 8769999019709863198L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "username", length = 255, nullable = false)
	private String username;
	
	@Column(name = "password", length = 255, nullable = false)
	private String password;
	
}