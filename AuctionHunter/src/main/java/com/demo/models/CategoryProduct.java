package com.demo.models;
// Generated Jan 18, 2022, 8:06:39 AM by Hibernate Tools 5.1.10.Final

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * CategoryProduct generated by hbm2java
 */
@Entity
@Table(name = "category_product", catalog = "auctionhunter")
public class CategoryProduct implements java.io.Serializable {

	private CategoryProductId id;
	private Category category;
	private Product product;

	public CategoryProduct() {
	}

	public CategoryProduct(CategoryProductId id, Category category, Product product) {
		this.id = id;
		this.category = category;
		this.product = product;
	}

	@EmbeddedId

	@AttributeOverrides({
			@AttributeOverride(name = "productId", column = @Column(name = "product_id", nullable = false)),
			@AttributeOverride(name = "categoryId", column = @Column(name = "category_id", nullable = false)) })
	public CategoryProductId getId() {
		return this.id;
	}

	public void setId(CategoryProductId id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "category_id", nullable = false, insertable = false, updatable = false)
	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "product_id", nullable = false, insertable = false, updatable = false)
	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}
