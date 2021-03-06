package com.demo.repositories;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.models.HistoryAuction;
import com.demo.models.HistoryAuctionAjax;
import com.demo.models.Product;

@Repository
public interface HistoryAuctionRepository extends CrudRepository<HistoryAuction, Integer>{
	@Query("from HistoryAuction where product_id = :product_id")
	public List<HistoryAuction> findAllById(@Param("product_id") int product_id);
	
	@Query("select new com.demo.models.HistoryAuctionAjax(id, priceBid, dateBid, account.id, account.username) from HistoryAuction where product_id = :product_id order by priceBid desc")
	public List<HistoryAuctionAjax> findWinnerAjax(@Param("product_id") int product_id);
	
	@Query("from HistoryAuction where account_id = :account_id  order by id desc")
	public List<HistoryAuction> findAllByIdAcc(@Param("account_id") int account_id);
	
	@Query("SELECT product.id from HistoryAuction where account_id = :account_id GROUP BY product.id order by id desc")
	public List<String> findAllProductByIdAcc(@Param("account_id") int account_id);
	
	@Query("SELECT MAX(priceBid) from HistoryAuction where product_id = :product_id")
	public Double priceBidMax(@Param("product_id") int product_id);
	
	@Query("select e from HistoryAuction e where account_id = :account_id  order by id desc")
	public Page<HistoryAuction> findAllHistoryAuctionByIdAcc(@Param("account_id") int account_id,Pageable pageable);
}
