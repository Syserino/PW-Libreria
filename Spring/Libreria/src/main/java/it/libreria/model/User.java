package it.libreria.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "users")
public class User implements Serializable {
	private static final long serialVersionUID = 8769999019709863198L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Pattern(regexp = "[a-zA-Z0-9._-]{4,25}", message = "{form.error.username}")
	@Column(name = "username", length = 255, nullable = false)
	private String username;

	@Pattern(regexp = "[a-zA-Z0-9!?.-]{4,20}", message = "La password deve avere tra 4 e 20 caratteri.")
	@Column(name = "password", length = 20, nullable = false)
	private String password;

	@Column(name = "privileges", length = 255, nullable = false)
	private int privileges;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "anagraphic_id")
	private Anagraphic anagraphic;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Anagraphic getAnagraphic() {
		return anagraphic;
	}

	public void setAnagraphic(Anagraphic anagraphic) {
		this.anagraphic = anagraphic;
	}

	public int getPrivileges() {
		return privileges;
	}

	public void setPrivileges(int privileges) {
		this.privileges = privileges;
	}

}
