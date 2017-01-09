package com.niit.goonline.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name = "PRODUCTS")
public class Products {
	@Id
	@Column(name = "PRO_ID")
	private String ProductId;
	@Column(name = "PRO_NAME")
	private String ProductName;
	@Column(name = "PRO_PRICE")
	private int ProductPrice;

	public String getProductId() {
		return ProductId;
	}

	public void setProductId(String productId) {
		ProductId = productId;
	}

	public String getProductName() {
		return ProductName;
	}

	public void setProductName(String productName) {
		ProductName = productName;
	}

	public int getProductPrice() {
		return ProductPrice;
	}

	public void setProductPrice(int productPrice) {
		ProductPrice = productPrice;
	}

}
