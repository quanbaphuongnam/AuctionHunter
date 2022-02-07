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
	
	@Query("from Cart where account.id = :idAcc")
	public List<Cart> findByIdAcc(@Param("idAcc") int idAcc);
	
}
