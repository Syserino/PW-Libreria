package it.libreria.dao;

import org.springframework.data.repository.CrudRepository;

import it.libreria.model.Order;

public interface OrderDao extends CrudRepository<Order, Integer>
{}

