package com.demo.repositories;
import com.demo.models.ProductInfo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.demo.models.Product;

@Repository
public interface ProductRepository  extends CrudRepository<Product, Integer>{

	
	/*
	 * @Query("SELECT new com.demo.models.ProductInfo(id, account, name, description, price, priceStart, startDate, endDate, created, status, isDelete, productPhotos) FROM Product"
	 * ) public List<ProductInfo> listProductInfo();
	 */
	

	 
}
