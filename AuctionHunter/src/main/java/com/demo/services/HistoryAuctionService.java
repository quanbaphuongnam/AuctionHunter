package com.demo.services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;

import com.demo.models.HistoryAuction;
import com.demo.models.HistoryAuctionAjax;

public interface HistoryAuctionService {
	public List<HistoryAuction> findAllById( int product_id);
	
	public Iterable<HistoryAuction> findAll();
	
	public List<HistoryAuctionAjax> findWinnerAjax(int product_id);
	
	public HistoryAuction save(HistoryAuction historyAuction);
	
	public List<HistoryAuction> findAllByIdAcc(int account_id);
	
	public Double priceBidMax(int product_id);
	
	public Page<HistoryAuction> findAllHistoryAuctionByIdAcc( int account_id,Pageable pageable);
}
