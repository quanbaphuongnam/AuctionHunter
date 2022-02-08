package com.demo.repositories;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.models.Category;
import com.demo.models.Product;

@Repository
public interface CategoryRepository  extends CrudRepository<Category, Integer>{

	@Query("from Category where is_delete = 1 ")
	public List<Category> findAllAvailability();
}
