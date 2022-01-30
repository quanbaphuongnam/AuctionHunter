package com.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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
	public List<HistoryAuctionAjax> findWinnerAjax(int product_id) {
		
		return historyAuctionRepository.findWinnerAjax(product_id);
	}
	@Override
	public HistoryAuction save(HistoryAuction historyAuction) {
		
		return historyAuctionRepository.save(historyAuction);
	}
	@Override
	public List<HistoryAuction> findAllByIdAcc(int account_id) {
		return historyAuctionRepository.findAllByIdAcc(account_id);
	}
	@Override
	public Double priceBidMax(int product_id) {
		return historyAuctionRepository.priceBidMax(product_id);
	}
	@Override
	public Page<HistoryAuction> findAllHistoryAuctionByIdAcc(int account_id, Pageable pageable) {
		// TODO Auto-generated method stub
		return historyAuctionRepository.findAllHistoryAuctionByIdAcc(account_id, pageable);
	}

}
