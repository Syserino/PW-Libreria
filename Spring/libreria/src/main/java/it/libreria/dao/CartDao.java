package it.libreria.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import it.libreria.model.Cart;
import it.libreria.model.User;

public interface CartDao extends CrudRepository<Cart, Integer>{
	List<Cart> findAllByUser(User user);
}
