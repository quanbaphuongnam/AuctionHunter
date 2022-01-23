package com.demo.models;
// Generated Jan 18, 2022, 8:06:39 AM by Hibernate Tools 5.1.10.Final

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

/**
 * Brand generated by hbm2java
 */
@Entity
@Table(name = "brand", catalog = "auctionhunter")
public class Brand implements java.io.Serializable {

	private Integer id;
	private String name;
	private int isDelete;
	private Set<BrandProduct> brandProducts = new HashSet<BrandProduct>(0);

	public Brand() {
	}

	public Brand(String name, int isDelete) {
		this.name = name;
		this.isDelete = isDelete;
	}

	public Brand(String name, int isDelete, Set<BrandProduct> brandProducts) {
		this.name = name;
		this.isDelete = isDelete;
		this.brandProducts = brandProducts;
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


	@Column(name = "name", nullable = false, length = 50)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "is_delete", nullable = false)
	public int getIsDelete() {
		return this.isDelete;
	}

	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "brand")
	public Set<BrandProduct> getBrandProducts() {
		return this.brandProducts;
	}

	public void setBrandProducts(Set<BrandProduct> brandProducts) {
		this.brandProducts = brandProducts;
	}

}