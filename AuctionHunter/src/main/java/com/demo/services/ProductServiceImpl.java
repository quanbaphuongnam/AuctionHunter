package com.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.models.Product;
import com.demo.models.ProductInfo;
import com.demo.repositories.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductRepository productRepository;
	
	@Override
	public Iterable<Product> findAll() {

		return productRepository.findAll();
	}
	
//	@Override public List<ProductInfo> listProductInfo() { 
//		return productRepository.listProductInfo(); 
//	}

	

}
