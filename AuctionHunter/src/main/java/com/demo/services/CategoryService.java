package com.demo.services;

import com.demo.models.Category;

public interface CategoryService {
	
	public Iterable<Category> findAll();	
	public Category find(int id);
}
