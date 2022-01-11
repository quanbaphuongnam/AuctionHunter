package com.demo.services;

import java.util.List;

import com.demo.models.Product;
import com.demo.models.ProductInfo;

public interface ProductService {
	
	public Iterable<Product> findAll();
	
	public Product find(int id);
}
