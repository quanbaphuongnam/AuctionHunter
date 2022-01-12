package com.demo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.models.HistoryAuction;
import com.demo.models.HistoryAuctionAjax;

@Repository
public interface HistoryAuctionRepository extends CrudRepository<HistoryAuction, Integer>{
	@Query("from HistoryAuction where product_id = :product_id")
	public List<HistoryAuction> findAllById(@Param("product_id") int product_id);
	
	@Query("select new com.demo.models.HistoryAuctionAjax(id, priceBid, dateBid, account.id, account.username) from HistoryAuction order by priceBid desc")
	public List<HistoryAuctionAjax> findAllAjax();
	
	@Query("select new com.demo.models.HistoryAuctionAjax(id, priceBid, dateBid, account.id, account.username) from HistoryAuction where product_id = :product_id order by priceBid desc")
	public List<HistoryAuctionAjax> findWinnerAjax(@Param("product_id") int product_id);
	
	
}
