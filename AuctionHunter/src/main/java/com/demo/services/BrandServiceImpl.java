package com.demo.services;

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

}
