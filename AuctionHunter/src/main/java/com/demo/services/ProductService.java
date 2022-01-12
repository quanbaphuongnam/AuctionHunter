package com.demo.services;

import java.util.List;

import org.springframework.data.repository.query.Param;

import com.demo.models.Product;
import com.demo.models.ProductInfo;

public interface ProductService {
	
	public Iterable<Product> findAll();
	
	public Product find(int id);
	
	public String namePhoto(int product_id);
}
