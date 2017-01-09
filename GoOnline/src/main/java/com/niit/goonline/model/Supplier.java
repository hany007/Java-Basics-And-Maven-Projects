package com.niit.goonline.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "SUPPLIER")
@Component
public class Supplier {

	@Id
	@Column(name = "SUP_ID")
	private int supplier_id;
	@Column(name = "SUP_NAME")
	private String supplier_name;
	@Column(name = "SUP_DIS")
	private String supplier_desc;

	public int getSupplier_id() {
		return supplier_id;
	}

	public void setSupplier_id(int supplier_id) {
		this.supplier_id = supplier_id;
	}

	public String getSupplier_name() {
		return supplier_name;
	}

	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}

	public String getSupplier_desc() {
		return supplier_desc;
	}

	public void setSupplier_desc(String supplier_desc) {
		this.supplier_desc = supplier_desc;
	}

}
