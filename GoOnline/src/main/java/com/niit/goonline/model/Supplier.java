package com.niit.goonline.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Supplier {
	
	@Id
	@GeneratedValue
	private int supplierid;
	private String suppliername;
	private String supplierdesc;
	public int getSupplierid() {
		return supplierid;
	}
	public void setSupplierid(int supplierid) {
		this.supplierid = supplierid;
	}
	public String getSuppliername() {
		return suppliername;
	}
	public void setSuppliername(String suppliername) {
		this.suppliername = suppliername;
	}
	public String getSupplierdesc() {
		return supplierdesc;
	}
	public void setSupplierdesc(String supplierdesc) {
		this.supplierdesc = supplierdesc;
	} 
}
