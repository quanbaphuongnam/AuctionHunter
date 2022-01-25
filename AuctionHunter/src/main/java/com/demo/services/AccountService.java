package com.demo.services;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.demo.models.Account;

public interface AccountService extends UserDetailsService{

	public Account save(Account account);
	public Account findByUsername(String username);
	public Account find(int id);
	public List<Account> findAll();
	
}
