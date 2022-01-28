package com.demo.repositories;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.models.Account;
import com.demo.models.HistoryAuction;
import com.demo.models.Invoice;

@Repository
public interface InvoiceRepository extends CrudRepository<Invoice, Integer> {
	
	@Query("from Invoice where account_id = :account_id  order by id desc")
	public List<Invoice> findAllByIdAcc(@Param("account_id") int account_id);
	
	@Query("select e from Invoice e where account_id = :account_id  order by id desc")
	public Page<Invoice> findAllInvoiceByIdAccPage(@Param("account_id") int account_id,Pageable pageable);
	
}
