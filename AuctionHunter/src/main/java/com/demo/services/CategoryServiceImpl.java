package com.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.models.Category;
import com.demo.repositories.CategoryRepository;

@Service
public  class CategoryServiceImpl implements CategoryService{
	@Autowired
	private CategoryRepository categoryRepository;

	@Override
	public Iterable<Category> findAll() {
		return categoryRepository.findAll();
	}

}
