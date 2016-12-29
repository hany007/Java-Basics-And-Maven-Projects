package com;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Catagories {
	@Id
	private int CatagoryId;
	private String CatagoryName;
	public int getCatagoryId() {
		return CatagoryId;
	}
	public void setCatagoryId(int catagoryId) {
		CatagoryId = catagoryId;
	}
	public String getCatagoryName() {
		return CatagoryName;
	}
	public void setCatagoryName(String catagoryName) {
		CatagoryName = catagoryName;
	}

}
