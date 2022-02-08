package com.demo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.models.Brand;
import com.demo.models.Category;

@Repository
public interface BrandRepository  extends CrudRepository<Brand, Integer>{

	@Query("from Brand where is_delete = 1 ")
	public List<Brand> findAllAvailability();
}
