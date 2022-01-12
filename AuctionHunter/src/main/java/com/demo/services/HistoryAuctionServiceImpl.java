package com.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.models.HistoryAuction;
import com.demo.models.HistoryAuctionAjax;
import com.demo.repositories.HistoryAuctionRepository;
@Service
public class HistoryAuctionServiceImpl implements HistoryAuctionService{

	@Autowired
	private HistoryAuctionRepository historyAuctionRepository;
	@Override
	public List<HistoryAuction> findAllById(int product_id) {
		
		return historyAuctionRepository.findAllById(product_id);
	}
	@Override
	public Iterable<HistoryAuction> findAll() {
		
		return historyAuctionRepository.findAll();
	}
	@Override
	public List<HistoryAuctionAjax> findAllAjax() {
		
		return historyAuctionRepository.findAllAjax();
	}
	@Override
	public List<HistoryAuctionAjax> findWinnerAjax(int product_id) {
		
		return historyAuctionRepository.findWinnerAjax(product_id);
	}
	@Override
	public HistoryAuction save(HistoryAuction historyAuction) {
		
		return historyAuctionRepository.save(historyAuction);
	}

}
