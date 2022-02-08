package com.demo.services;

import java.util.List;

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

	@Override
	public Category find(int id) {
		
		return categoryRepository.findById(id).get();
	}

	@Override
	public List<Category> findAllAvailability() {
		
		return categoryRepository.findAllAvailability();
	}

	@Override
	public void delete(int id) {
		categoryRepository.deleteById(id);
		
	}

	@Override
	public Category save(Category category) {
		
		return categoryRepository.save(category);
	}

}
