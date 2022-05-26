package it.libreria.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.libreria.dao.BookDao;
import it.libreria.model.Book;

@Service
public class BookServiceImpl implements BookService 
{
	@Autowired
	private BookDao bookDao;
	
	@Override
	public List<Book> getBooksFromTitle(String searchBy) 
	{
		List<Book> list = (List<Book>) bookDao.findAll();
		
		if (!searchBy.isEmpty())
		{
			list = list
					.stream()
					.filter(b -> b.getTitle().toLowerCase().contains(searchBy.toLowerCase()))
					.collect(Collectors.toList());
		}
		
		return list;
	}
	
	@Override
	public List<Book> getBooksFromAuthor(String searchBy) 
	{
		List<Book> list = (List<Book>) bookDao.findAll();
		
		if (!searchBy.isEmpty())
		{
			list = list
					.stream()
					.filter(b -> b.getAuthor().toLowerCase().contains(searchBy.toLowerCase()))
					.collect(Collectors.toList());
		}
		
		return list;
	}

}