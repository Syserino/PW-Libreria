package it.libreria.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "anagraphic")
public class Anagraphic implements Serializable {
	private static final long serialVersionUID = -3111538971613853120L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Pattern(regexp = "[a-zA-Zאטלעש\\s']{1,255}", message = "{customer.form.error.general}")
	@Column(name = "name", length = 255, nullable = true)
	private String name;

	@Pattern(regexp = "[a-zA-Zאטלעש\\s']{1,255}", message = "{customer.form.error.general}")
	@Column(name = "surname", length = 255, nullable = true)
	private String surname;

	@Pattern(regexp = "[a-zA-Z0-9@_.-]{1,255}", message = "{customer.form.error.general}")
	@Column(name = "mail", length = 255, nullable = false)
	private String mail;

	@Column(name = "gender", length = 10, nullable = true)
	private String gender;

	@Pattern(regexp = "[a-zA-Zאטלעש\\s'.-]{1,255}", message = "{customer.form.error.general}")
	@Column(name = "street", length = 255, nullable = true)
	private String street;

	@Pattern(regexp = "[a-zA-Z0-9/.-]{1,10}", message = "{customer.form.error.general}")
	@Column(name = "cn", length = 10, nullable = true)
	private String civicNumber;
	
	@Pattern(regexp = "[a-zA-Z0-9/.-]{1,10}", message = "{customer.form.error.general}")
	@Column(name = "phone", length = 15, nullable = true)
	private String phone;

	@Pattern(regexp = "[0-9]{5}", message = "{customer.form.error.general}")
	@Column(name = "cap", length = 10, nullable = true)
	private String cap;

	@Pattern(regexp = "[a-zA-Zאטלעש\\s'.-]{1,255}", message = "{customer.form.error.general}")
	@Column(name = "town", length = 255, nullable = true)
	private String town;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCivicNumber() {
		return civicNumber;
	}

	public void setCivicNumber(String civicNumber) {
		this.civicNumber = civicNumber;
	}

	public String getCap() {
		return cap;
	}

	public void setCap(String cap) {
		this.cap = cap;
	}

	public String getTown() {
		return town;
	}

	public void setTown(String town) {
		this.town = town;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}