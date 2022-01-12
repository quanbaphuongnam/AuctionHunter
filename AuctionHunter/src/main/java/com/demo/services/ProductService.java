package com.demo.services;

import java.util.List;

import com.demo.models.Product;
import com.demo.models.ProductInfo;

public interface ProductService {
	
	public Iterable<Product> findAll();
	
//	public List<ProductInfo> listProductInfo();
	public List<String> searchByTerm(String term);
	
	public List<Product> searchByKeyword(String keyword);
}
