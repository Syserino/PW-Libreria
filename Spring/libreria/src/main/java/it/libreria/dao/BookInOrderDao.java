package it.libreria.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import it.libreria.model.Book;
import it.libreria.model.Order;

public interface BookInOrderDao extends CrudRepository<Book, Integer> {
	List<Book> findAllByOrder(Order order);
}
