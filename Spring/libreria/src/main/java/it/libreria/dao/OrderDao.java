package it.libreria.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import it.libreria.model.Order;
import it.libreria.model.User;

public interface OrderDao extends CrudRepository<Order, Integer>
{
	List<Order> findAllByUser(User u);
	List<Order> findAllById(int parseInt);
}

