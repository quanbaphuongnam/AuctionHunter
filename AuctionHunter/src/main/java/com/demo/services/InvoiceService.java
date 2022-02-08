package com.demo.services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.demo.models.Account;
import com.demo.models.Cart;
import com.demo.models.Invoice;

public interface InvoiceService {

	public Invoice save(Invoice invoice);
	
	public Invoice find(int id);
	
	public List<Invoice> findAllByIdAcc( int account_id);
	
	public List<Invoice> findAllByIdAcc2( int id);
	
	public Page<Invoice> findAllInvoiceByIdAccPage( int account_id,Pageable pageable);
}
