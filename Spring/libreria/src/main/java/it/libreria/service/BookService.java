package it.libreria.service;

import java.util.List;

import it.libreria.model.Book;

public interface BookService 
{	
	List<Book> getBooksFromTitle (String searchBy);
	List<Book> getBooksFromAuthor (String searchBy);
	List<Book> getBooksInOrder(int id);
}
