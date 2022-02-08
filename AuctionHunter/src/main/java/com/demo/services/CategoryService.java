package com.demo.services;

import java.util.List;


import com.demo.models.Category;

public interface CategoryService {
	
	public Iterable<Category> findAll();	
	public Category find(int id);
	public Category save(Category category);
	public void delete(int id);
	public List<Category> findAllAvailability();
}
