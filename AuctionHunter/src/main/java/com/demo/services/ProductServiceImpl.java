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

	@Override
	public List<Product> searchByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return productRepository.searchByKeyword(keyword);
	}
    @Override
	public Product find(int id) {
		
		return productRepository.findById(id).get();
	}

	@Override
	public String namePhoto(int product_id) {
		return productRepository.namePhoto(product_id);

	}




	@Override
	public List<String> searchByTerm(String term) {
		// TODO Auto-generated method stub
		return productRepository.searchByTerm(term);
	}
	
//	@Override public List<ProductInfo> listProductInfo() { 
//		return productRepository.listProductInfo(); 
//	}

	

}
