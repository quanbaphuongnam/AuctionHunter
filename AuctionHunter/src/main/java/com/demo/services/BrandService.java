package com.demo.services;

import java.util.List;

import com.demo.models.Brand;
import com.demo.models.Product;

public interface BrandService {
	
	public Iterable<Brand> findAll();	
	public Brand find(int id);
	public Brand save(Brand brand);
	public List<Brand> findAllAvailability();
	public void delete(int id);
}
