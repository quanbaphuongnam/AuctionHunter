package com.demo.services;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;

import com.demo.models.HistoryAuction;
import com.demo.models.Product;
import com.demo.models.ProductInfo;

public interface ProductService {
	
	
	
	public List<Product> findAllProHappenning(Date dateNow);
	
	public List<Product> findAllProHasnotStarted(Date dateNow);

	public Product find(int id);

	public List<Product> searchByKeyword(String keyword);

	public String namePhoto(int product_id);
	
	public Product save(Product product);
	
	public List<Product> findAllByIdAcc(int account_id);
	
	public Iterable<Product> findAll();
	 
	public Page<Product> findpage(Pageable pageable,int status);
	
	 public List<Product> findAccept();
	
	public long count2();
	
	public Page<Product> findAllByIdAccPage(int account_id,Pageable pageable);
	
	public List<Product> findDeleted();
	
	public long countdelete();
	
	public Product findProduct(int account_id, String name, Date created);

}
