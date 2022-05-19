package it.libreria.dao;

import org.springframework.data.repository.CrudRepository;

import it.libreria.model.User;


public interface UserDao extends CrudRepository<User, Integer>
{
	User findByUsername(String name);
}
