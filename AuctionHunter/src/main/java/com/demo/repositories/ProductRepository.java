package com.demo.repositories;
import com.demo.models.ProductInfo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.models.HistoryAuctionAjax;
import com.demo.models.Product;

@Repository
public interface ProductRepository  extends CrudRepository<Product, Integer>{

//	@Query("select new com.demo.models.ProductInfo(id, name, description, price, priceStart, startDate, endDate, priceStep, created, status, isDelete, account) from Product")
//	public List<ProductInfo> listProductInfo();

//	@Query("select name from Product where name like %:term%")
//	public List<String> searchByTerm(@Param("term")String term);
	
	@Query("from Product where name like %:keyword%")
	public List<Product> searchByKeyword(@Param("keyword") String keyword);


	@Query(value =  "select name from product_photo where product_id = :product_id order by product_id desc limit 1", nativeQuery = true)
	public String namePhoto(@Param("product_id") int product_id);


	

	
}
