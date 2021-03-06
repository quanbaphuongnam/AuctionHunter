package com.demo.services;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.models.Cart;
import com.demo.repositories.CartRepository;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartRepository cartRepository;

	@Override
	public Cart save(Cart cart) {
		return cartRepository.save(cart);
	}

	@Override
	public List<Cart> findByIdAcc(int idAcc) {
		return cartRepository.findByIdAcc(idAcc);
	}

	@Override
	public Boolean findById(int id) {
		return cartRepository.count(id) > 0;
	}

	@Override
	public Cart findId(int id) {
		return cartRepository.findById(id).get();
	}

	@Override
	public Boolean findCountId(int id) {
		return cartRepository.countId(id) > 0;
	}

	@Override
	public Cart findIdPro(int id) {
		return cartRepository.findId(id);
	}
	
}
