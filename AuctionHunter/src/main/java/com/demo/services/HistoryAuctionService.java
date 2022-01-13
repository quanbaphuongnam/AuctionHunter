package com.demo.services;

import java.util.List;

import org.springframework.data.repository.query.Param;

import com.demo.models.HistoryAuction;
import com.demo.models.HistoryAuctionAjax;

public interface HistoryAuctionService {
	public List<HistoryAuction> findAllById( int product_id);
	
	public Iterable<HistoryAuction> findAll();
	
	public List<HistoryAuctionAjax> findWinnerAjax(int product_id);
	
	public HistoryAuction save(HistoryAuction historyAuction);
}
