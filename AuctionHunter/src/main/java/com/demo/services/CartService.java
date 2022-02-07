package com.demo.services;

import java.util.List;

import com.demo.models.Cart;

public interface CartService{

	public Cart save(Cart cart);
	
	public List<Cart> findByIdAcc(int idAcc);
	
}
