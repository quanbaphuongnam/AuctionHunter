package com.demo.services;

import com.demo.models.ProductPhoto;

public interface ProductPhotoService {
	
	public Iterable<ProductPhoto> findAll();	
	
	public ProductPhoto save(ProductPhoto productPhoto);
	
}
