package it.libreria.dao;

import org.springframework.data.repository.CrudRepository;

import it.libreria.model.Book;

public interface BookDao extends CrudRepository<Book, Integer>
{
}