package com.demo.services;

import com.demo.models.Product;

public interface ProductService {
	public Iterable<Product> findAll();
}
