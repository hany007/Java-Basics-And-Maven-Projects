package com.niit.goonline.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.springframework.stereotype.Component;

@Entity
@Component
@Table(name = "USER")
public class User {
	@Id
	@GeneratedValue
	@Column(name = "USER_ID")
	private int id;
	@Column(name = "USER_NAME")
	private String name;
	@Column(name = "PASSWORD")
	private String password;

	private boolean Enable;

	public boolean isEnable() {
		return Enable;
	}

	public void setEnable(boolean enable) {
		Enable = enable;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
