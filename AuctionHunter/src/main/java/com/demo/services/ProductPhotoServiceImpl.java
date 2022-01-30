package com.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.models.Brand;
import com.demo.models.Category;
import com.demo.models.ProductPhoto;
import com.demo.repositories.BrandRepository;
import com.demo.repositories.CategoryRepository;
import com.demo.repositories.ProductPhotoRepository;
import com.demo.repositories.ProductRepository;

@Service
public  class ProductPhotoServiceImpl implements ProductPhotoService{
	@Autowired
	private ProductPhotoRepository productPhotoRepository;

	@Override
	public Iterable<ProductPhoto> findAll() {
		return productPhotoRepository.findAll();
	}

	@Override
	public ProductPhoto save(ProductPhoto productPhoto) {
		return productPhotoRepository.save(productPhoto);
	}

}
