package it.libreria.dao;

import org.springframework.data.repository.CrudRepository;

import it.libreria.model.Anagraphic;

public interface AnagraphicDao extends CrudRepository<Anagraphic, Integer>
{
	Anagraphic findByName(String name);
	Anagraphic findByMail(String mail);
	
	
}
