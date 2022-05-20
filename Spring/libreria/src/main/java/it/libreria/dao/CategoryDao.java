package it.libreria.dao;

import org.springframework.data.repository.CrudRepository;

import it.libreria.model.Category;

public interface CategoryDao extends CrudRepository<Category, Integer>
{}
