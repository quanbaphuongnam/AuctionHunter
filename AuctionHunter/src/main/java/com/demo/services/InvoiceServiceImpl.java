package com.demo.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.demo.models.Account;
import com.demo.models.Invoice;

import com.demo.repositories.InvoiceRepository;

@Service
public class InvoiceServiceImpl implements InvoiceService {

	@Autowired
	private InvoiceRepository invoiceRepository;

	

	@Override
	public List<Invoice> findAllByIdAcc(int account_id) {
		// TODO Auto-generated method stub
		return invoiceRepository.findAllByIdAcc(account_id);
	}



	@Override
	public Page<Invoice> findAllInvoiceByIdAccPage(int account_id, Pageable pageable) {
		// TODO Auto-generated method stub
		return invoiceRepository.findAllInvoiceByIdAccPage(account_id, pageable);
	}
	
	
}
