package com.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.models.Brand;
import com.demo.models.Category;
import com.demo.repositories.BrandRepository;
import com.demo.repositories.CategoryRepository;

@Service
public  class BrandServiceImpl implements BrandService{
	@Autowired
	private BrandRepository brandRepository;

	@Override
	public Iterable<Brand> findAll() {
		return brandRepository.findAll();
	}

	@Override
	public Brand find(int id) {
		
		return brandRepository.findById(id).get();
	}

	@Override
	public List<Brand> findAllAvailability() {
		
		return brandRepository.findAllAvailability();
	}

	@Override
	public Brand save(Brand brand) {
		return brandRepository.save(brand);
	}

	@Override
	public void delete(int id) {
		brandRepository.deleteById(id);
		
	}

}
