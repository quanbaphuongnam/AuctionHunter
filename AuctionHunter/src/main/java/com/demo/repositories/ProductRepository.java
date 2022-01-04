package com.demo.repositories;

import org.springframework.data.repository.CrudRepository;

import com.demo.models.Product;

public interface ProductRepository  extends CrudRepository<Product, Integer>{

}
