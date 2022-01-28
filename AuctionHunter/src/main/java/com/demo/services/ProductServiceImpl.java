package com.demo.services;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.demo.models.Product;
import com.demo.models.ProductInfo;
import com.demo.repositories.ProductRepository;

@Service
public  class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductRepository productRepository;
	
	

	@Override
	public List<Product> searchByKeyword(String keyword) {
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


	/*
	 * @Override public List<String> searchByTerm(String term) { return
	 * productRepository.searchByTerm(term); }
	 */

	@Override
	public Product save(Product product) {
		return productRepository.save(product);
	}

	@Override
	public List<Product> findAllByIdAcc(int account_id) {
		// TODO Auto-generated method stub
		return productRepository.findAllByIdAcc(account_id);
	}

	@Override
	public List<Product> findAllProHappenning(Date dateNow) {
		
		return productRepository.findAllProHappenning(dateNow);
	}
	@Override
	public List<Product> findAllProHasnotStarted(Date dateNow) {
		
		return productRepository.findAllProHasnotStarted(dateNow);
	}
	@Override
	public Iterable<Product> findAll() {
		// TODO Auto-generated method stub
		return productRepository.findAll();
	}
	
	@Override
	public Page<Product> findpage(Pageable pageable,int status) {
		// TODO Auto-generated method stub
		return productRepository.findpage(pageable,status);
	}
	@Override
	public List<Product> findAccept( int status) {
		// TODO Auto-generated method stub
		return productRepository.findAccept( status);
	}
	@Override
	public long count2(int status) {
		// TODO Auto-generated method stub
		return productRepository.count2(status);
	}
	@Override
	public Page<Product> findAllByIdAccPage(int account_id, Pageable pageable) {
		// TODO Auto-generated method stub
		return productRepository.findAllByIdAccPage(account_id, pageable);
	}





//	@Override
//	public List<String> searchByTerm(String term) {
//		// TODO Auto-generated method stub
//		return productRepository.searchByTerm(term);
//	}

	

	

}
