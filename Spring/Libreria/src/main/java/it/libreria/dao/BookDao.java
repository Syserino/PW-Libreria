package it.libreria.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import it.libreria.model.Book;

public interface BookDao extends CrudRepository<Book, Integer>
{
	List<Book> findAllByCategoryId(int id);	
	
	
}