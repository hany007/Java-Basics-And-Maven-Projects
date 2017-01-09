package com.niit.goonline.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class CartItem {
	@Id
	@GeneratedValue
	private int CartProductId;
	@ManyToOne
	@JoinColumn(name = "cartId")
	@JsonIgnore
	private Cart cart;
	@ManyToOne
	@JoinColumn(name = "id")
	private Products product;
	private int quantity;
	private double totalPrice;

	public int getCartProductId() {
		return CartProductId;
	}

	public void setCartProductId(int cartProductId) {
		CartProductId = cartProductId;
	}

	public Products getProduct() {
		return product;
	}

	public void setProduct(Products product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

}
