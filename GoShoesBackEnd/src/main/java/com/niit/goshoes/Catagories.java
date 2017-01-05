package com.niit.goshoes;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Component
@Entity
@Table(name="CATARORIES")
public class Catagories {
	@Id
	@Column(name="CATA_ID")
	private String CatagoryId;
	@Column(name="CATA_NAME")
	private String CatagoryName;
	public String getCatagoryId() {
		return CatagoryId;
	}
	public void setCatagoryId(String catagoryId) {
		CatagoryId = catagoryId;
	}
	public String getCatagoryName() {
		return CatagoryName;
	}
	public void setCatagoryName(String catagoryName) {
		CatagoryName = catagoryName;
	}
	

}
