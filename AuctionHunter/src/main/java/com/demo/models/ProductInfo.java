package com.demo.models;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ProductInfo {
	
	private int id;
	private String name;
	private String description;
	private double price;
	private double priceStart;
	private Date startDate;
	private Date endDate;
	private double priceStep;
	private Date created;
	private boolean status;
	private boolean isDelete;
	private Account account;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getPriceStart() {
		return priceStart;
	}
	public void setPriceStart(double priceStart) {
		this.priceStart = priceStart;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public double getPriceStep() {
		return priceStep;
	}
	public void setPriceStep(double priceStep) {
		this.priceStep = priceStep;
	}
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public boolean isDelete() {
		return isDelete;
	}
	public void setDelete(boolean isDelete) {
		this.isDelete = isDelete;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	
	public ProductInfo(int id, String name, String description, double price, double priceStart, Date startDate,
			Date endDate, double priceStep, Date created, boolean status, boolean isDelete, Account account) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.priceStart = priceStart;
		this.startDate = startDate;
		this.endDate = endDate;
		this.priceStep = priceStep;
		this.created = created;
		this.status = status;
		this.isDelete = isDelete;
		this.account = account;
	}
	public ProductInfo() {
		super();
		
	}
}