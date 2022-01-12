package com.demo.models;
// Generated Jan 3, 2022, 9:43:46 AM by Hibernate Tools 5.1.10.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Product generated by hbm2java
 */
@Entity
@Table(name = "product", catalog = "auctionhunter")
public class Product implements java.io.Serializable {

	private Integer id;
	private Account account;
	private String name;
	private String description;
	private double price;
	private double priceStart;
	private Date startDate;
	private Date endDate;
	private double priceStep;
	private Date created;
	private int status;
	private boolean isDelete;
	
	private Set<CategoryProduct> categoryProducts = new HashSet<CategoryProduct>(0);
	private Set<HistoryAuction> historyAuctions = new HashSet<HistoryAuction>(0);
	private Set<ProductPhoto> productPhotos = new HashSet<ProductPhoto>(0);
	private Set<Cart> carts = new HashSet<Cart>(0);
	private Set<Invoice> invoices = new HashSet<Invoice>(0);

	public Product() {
	}

	public Product(Account account, String name, String description, double price, double priceStart, Date startDate,
			Date endDate, double priceStep, Date created, int status, boolean isDelete) {
		this.account = account;
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
		
	}

	public Product(Account account, String name, String description, double price, double priceStart, Date startDate,
			Date endDate, double priceStep, Date created, int status, boolean isDelete, 
			Set<CategoryProduct> categoryProducts, Set<HistoryAuction> historyAuctions, Set<ProductPhoto> productPhotos,
			Set<Cart> carts, Set<Invoice> invoices) {
		this.account = account;
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
		
		this.categoryProducts = categoryProducts;
		this.historyAuctions = historyAuctions;
		this.productPhotos = productPhotos;
		this.carts = carts;
		this.invoices = invoices;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "account_id", nullable = false)
	public Account getAccount() {
		return this.account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	@Column(name = "name", nullable = false, length = 100)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "description", nullable = false, length = 900)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "price", nullable = false, precision = 22, scale = 0)
	public double getPrice() {
		return this.price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Column(name = "price_start", nullable = false, precision = 22, scale = 0)
	public double getPriceStart() {
		return this.priceStart;
	}

	public void setPriceStart(double priceStart) {
		this.priceStart = priceStart;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "start_date", nullable = false, length = 19)
	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "end_date", nullable = false, length = 19)
	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	@Column(name = "price_step", nullable = false, precision = 22, scale = 0)
	public double getPriceStep() {
		return this.priceStep;
	}

	public void setPriceStep(double priceStep) {
		this.priceStep = priceStep;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "created", nullable = false, length = 19)
	public Date getCreated() {
		return this.created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	@Column(name = "status", nullable = false)
	public int isStatus() {
		return this.status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Column(name = "is_delete", nullable = false)
	public boolean isIsDelete() {
		return this.isDelete;
	}

	public void setIsDelete(boolean isDelete) {
		this.isDelete = isDelete;
	}

	

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
	public Set<CategoryProduct> getCategoryProducts() {
		return this.categoryProducts;
	}

	public void setCategoryProducts(Set<CategoryProduct> categoryProducts) {
		this.categoryProducts = categoryProducts;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
	public Set<HistoryAuction> getHistoryAuctions() {
		return this.historyAuctions;
	}

	public void setHistoryAuctions(Set<HistoryAuction> historyAuctions) {
		this.historyAuctions = historyAuctions;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
	public Set<ProductPhoto> getProductPhotos() {
		return this.productPhotos;
	}

	public void setProductPhotos(Set<ProductPhoto> productPhotos) {
		this.productPhotos = productPhotos;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
	public Set<Cart> getCarts() {
		return this.carts;
	}

	public void setCarts(Set<Cart> carts) {
		this.carts = carts;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
	public Set<Invoice> getInvoices() {
		return this.invoices;
	}

	public void setInvoices(Set<Invoice> invoices) {
		this.invoices = invoices;
	}

}
