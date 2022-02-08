package com.demo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.models.Account;
import com.demo.models.Cart;
import com.demo.models.Product;


@Repository
public interface CartRepository extends CrudRepository<Cart, Integer> {
	
	@Query("from Cart where account.id = :idAcc and status != 0")
	public List<Cart> findByIdAcc(@Param("idAcc") int idAcc);
	
	@Query("from Cart where product.id = :id")
	public Cart findId(@Param("id") int id);
	
	@Query("select count(id) from Cart where product.id = :id")
	public long count(@Param("id") int id);
	
	@Query("select count(id) from Cart where id = :id")
	public long countId(@Param("id") int id);
	
}
