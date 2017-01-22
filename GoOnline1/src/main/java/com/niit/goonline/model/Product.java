package com.niit.goonline.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table
@Component
public class Product {
	@Id
	private String id;
	@NotEmpty(message = "Product name can not be empty.")
	@Column(unique = true, nullable=false)
	private String name;
	private String description;
//	@NotEmpty(message = "Product price can not be empty.")
	private int price;
	
	private String category_id;
	private String supplier_id;
	
	 @OneToMany(mappedBy = "product", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	   /* @Json
	    private List<CartItem> cartItemList;
	
	
	public List<CartItem> getCartItemList() {
		return cartItemList;
	}

	public void setCartItemList(List<CartItem> cartItemList) {
		this.cartItemList = cartItemList;
	}
	@Transient
    private MultipartFile itemImage;
	
	public MultipartFile getItemImage() {
		return itemImage;
	}

	public void setItemImage(MultipartFile itemImage) {
		this.itemImage = itemImage;
	}*/
	 
	 
	 @Transient
	    private MultipartFile itemImage;
		
		public MultipartFile getItemImage() {
			return itemImage;
		}

		public void setItemImage(MultipartFile itemImage) {
			this.itemImage = itemImage;
		}

	 
	@ManyToOne
    @JoinColumn(name="category_id", nullable = false, updatable = false, insertable = false)
   	private Category category;
	
	@ManyToOne
    @JoinColumn(name="supplier_id",nullable = false, updatable = false, insertable = false)
	private Supplier supplier;
	
	
	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	

	public String getCategory_id() {
		return category_id;
	}

	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}

	public String getSupplier_id() {
		return supplier_id;
	}

	public void setSupplier_id(String supplier_id) {
		this.supplier_id = supplier_id;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Column(name = "ID")
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
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
}