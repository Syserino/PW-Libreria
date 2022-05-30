package it.libreria.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import it.libreria.model.BookInOrder;
import it.libreria.model.Order;

public interface BookInOrderDao extends CrudRepository<BookInOrder, Integer> {
	List<BookInOrder> findAllByOrder(Order o);
}
