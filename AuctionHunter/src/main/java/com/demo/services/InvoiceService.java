package com.demo.services;

import java.util.List;

import org.springframework.data.repository.query.Param;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.demo.models.Account;
import com.demo.models.Invoice;

public interface InvoiceService {

	public List<Invoice> findAllByIdAcc( int account_id);
	
}
