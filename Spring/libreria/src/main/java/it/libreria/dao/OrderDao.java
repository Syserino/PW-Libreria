package it.libreria.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import it.libreria.model.Anagraphic;
import it.libreria.model.Order;

public interface OrderDao extends CrudRepository<Order, Integer>
{
	List<Order> findAllByAnagraphic(Anagraphic a);
}

