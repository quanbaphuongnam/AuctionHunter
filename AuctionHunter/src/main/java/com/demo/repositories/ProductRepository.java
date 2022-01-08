package com.demo.repositories;
import com.demo.models.ProductInfo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.demo.models.Product;

@Repository
public interface ProductRepository  extends CrudRepository<Product, Integer>{

//	@Query("select new com.demo.models.ProductInfo(id, name, description, price, priceStart, startDate, endDate, priceStep, created, status, isDelete, account) from Product")
//	public List<ProductInfo> listProductInfo();

	
}
