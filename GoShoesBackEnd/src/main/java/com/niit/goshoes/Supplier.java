package com.niit.goshoes;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="SUPPLIER")
public class Supplier {
	@Id
	@Column(name="SUP_ID")
	private String SupplierId;
	@Column(name="SUP_NAME")
	private String SupplierName;
	@Column(name="SUP_ADDRESS")
	private String SupplierAddress;
	public String getSupplierId() {
		return SupplierId;
	}
	public void setSupplierId(String supplierId) {
		SupplierId = supplierId;
	}
	public String getSupplierName() {
		return SupplierName;
	}
	public void setSupplierName(String supplierName) {
		SupplierName = supplierName;
	}
	public String getSupplierAddress() {
		return SupplierAddress;
	}
	public void setSupplierAddress(String supplierAddress) {
		SupplierAddress = supplierAddress;
	}

}
