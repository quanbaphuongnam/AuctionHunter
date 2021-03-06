package com.demo.repositories;
import com.demo.models.ProductInfo;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.models.HistoryAuctionAjax;
import com.demo.models.Product;

@Repository
public interface ProductRepository  extends CrudRepository<Product, Integer>{


	@Query("from Product where is_delete = 1 and status = 1 and start_date <= :dateNow and end_date >= :dateNow order by id desc")
	public List<Product> findAllProHappenning(@Param("dateNow") Date dateNow);
	
	@Query("from Product where is_delete = 1 and status = 1 and start_date > :dateNow order by id desc")
	public List<Product> findAllProHasnotStarted(@Param("dateNow") Date dateNow);
	
	
	@Query("from Product where name  like %:keyword%")
	public List<Product> searchByKeyword(@Param("keyword") String keyword);


	@Query(value = "select name from product_photo where product_id = :product_id order by product_id desc limit 1", nativeQuery = true)
	public String namePhoto(@Param("product_id") int product_id);

	@Query("from Product where account_id = :account_id  order by id desc")
	public List<Product> findAllByIdAcc(@Param("account_id")int account_id);
	
	@Query("select e from Product e where status = :status  order by id desc")
	Page<Product> findpage(Pageable pageable,@Param("status") int status);

	@Query("select count(id) from Product where status = 0")
	public long count2();
	
	@Query(" from Product where is_delete = 1 and status = 0")
	public List<Product> findAccept();
	
	@Query("select e from Product e where account_id = :account_id  order by id desc")
	public Page<Product> findAllByIdAccPage(@Param("account_id")int account_id,Pageable pageable);
	
	@Query("from Product where is_delete = 0")
	public List<Product> findDeleted();
	
	@Query("select count(id) from Product where is_delete = 0 order by id desc")
	public long countdelete();
	
	@Query("from Product where account_id = :account_id  and name = :name and created = :created order by id desc")
	public Product findProduct(@Param("account_id")int account_id, @Param("name")String name, @Param("created")Date created);
}
