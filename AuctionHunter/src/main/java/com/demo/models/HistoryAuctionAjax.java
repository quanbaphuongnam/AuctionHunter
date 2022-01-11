package com.demo.models;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class HistoryAuctionAjax {
	private Integer id;
	private double priceBid;
	
	@DateTimeFormat(pattern = "dd/MM/yyyy HH:mm:ss")
	private Date dateBid;
	private Integer accid;
	private String accUsername;
	
	
	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public double getPriceBid() {
		return priceBid;
	}


	public void setPriceBid(double priceBid) {
		this.priceBid = priceBid;
	}


	public Date getDateBid() {
		return dateBid;
	}


	public void setDateBid(Date dateBid) {
		this.dateBid = dateBid;
	}


	public Integer getAccid() {
		return accid;
	}


	public void setAccid(Integer accid) {
		this.accid = accid;
	}


	public String getAccUsername() {
		return accUsername;
	}


	public void setAccUsername(String accUsername) {
		this.accUsername = accUsername;
	}


	public HistoryAuctionAjax(Integer id, double priceBid, Date dateBid, Integer accid, String accUsername) {
		super();
		this.id = id;
		this.priceBid = priceBid;
		this.dateBid = dateBid;
		this.accid = accid;
		this.accUsername = accUsername;
	}


	public HistoryAuctionAjax() {
		super();
	}
	
	
}
